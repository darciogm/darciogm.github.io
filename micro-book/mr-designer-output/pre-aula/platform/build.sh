#!/usr/bin/env bash
# build.sh — Converte os 25 pré-aula .md em HTML com tracking
# Uso: bash build.sh

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SRC_DIR="$(dirname "$SCRIPT_DIR")"  # pre-aula/
OUT_DIR="$SCRIPT_DIR"               # platform/
TEMPLATE="$OUT_DIR/template.html"

echo "=== Convertendo pre-aulas .md → .html ==="
echo "Source: $SRC_DIR"
echo "Output: $OUT_DIR"
echo ""

for i in $(seq -w 1 25); do
  SRC="$SRC_DIR/aula-${i}-pre.md"
  OUT="$OUT_DIR/aula-${i}.html"
  PAGEID="aula-${i}"

  if [ ! -f "$SRC" ]; then
    echo "SKIP: $SRC not found"
    continue
  fi

  echo -n "  aula-${i}-pre.md → aula-${i}.html ... "

  # Full preprocessing + pandoc + template injection in one Python script
  python3 - "$SRC" "$OUT" "$TEMPLATE" "$PAGEID" << 'PYEOF'
import re, sys, subprocess, tempfile, os

src_path = sys.argv[1]
out_path = sys.argv[2]
template_path = sys.argv[3]
pageid = sys.argv[4]

with open(src_path, 'r', encoding='utf-8') as f:
    lines = f.readlines()

# ── Pass 1: Convert MkDocs syntax to HTML, line by line ──
output = []
saved_blocks = {}  # blocks protected from Pandoc
idx = 0

def consume_indented_block(start_idx):
    """Read all lines indented by 4 spaces after an admonition/collapsible."""
    block = []
    j = start_idx
    while j < len(lines):
        line = lines[j]
        if line.startswith('    '):
            block.append(line[4:])
            j += 1
        elif line.strip() == '':
            block.append('\n')
            j += 1
        else:
            break
    # Remove trailing empty lines
    while block and block[-1].strip() == '':
        block.pop()
    return ''.join(block).strip(), j

while idx < len(lines):
    line = lines[idx]
    stripped = line.strip()

    # ── Admonitions: !!! type "Title" ──
    m_adm = re.match(r'^!!!\s+(\w+)\s*("([^"]*)")?', stripped)
    if m_adm:
        atype = m_adm.group(1).lower()
        title = m_adm.group(3) if m_adm.group(3) else atype.capitalize()
        content, idx = consume_indented_block(idx + 1)
        output.append(f'<div class="admonition {atype}">\n')
        output.append(f'<div class="admonition-title">{title}</div>\n\n')
        output.append(f'{content}\n\n')
        output.append(f'</div>\n\n')
        continue

    # ── Collapsible: ??? type "Title" ──
    m_col = re.match(r'^\?\?\?\+?\s+(\w+)\s*("([^"]*)")?', stripped)
    if m_col:
        ctype = m_col.group(1).lower()
        title = m_col.group(3) if m_col.group(3) else ctype.capitalize()
        content, idx = consume_indented_block(idx + 1)
        output.append(f'<details>\n<summary>{title}</summary>\n')
        output.append(f'<div class="solution-body">\n\n{content}\n\n</div>\n')
        output.append(f'</details>\n\n')
        continue

    # ── Quiz container: convert checkbox format ──
    if '<div class="quiz-container"' in stripped:
        # Read until closing </div> of quiz container
        quiz_lines = []
        idx += 1
        depth = 1
        while idx < len(lines):
            ql = lines[idx].rstrip('\n')
            if '</div>' in ql:
                depth -= 1
                if depth <= 0:
                    break
            if '<div' in ql:
                depth += 1
            quiz_lines.append(ql)
            idx += 1
        idx += 1  # skip closing </div>

        # Parse questions and options
        quiz_html = []
        quiz_html.append('<div class="quiz-container">')
        quiz_html.append('<div class="quiz-header"><h3>Quiz Pré-Aula</h3>')
        quiz_html.append('<div class="quiz-score">Pontuação: <span id="quiz-score">0/0</span></div></div>')

        current_q = None
        current_correct = None
        questions = []
        options_buf = []

        for ql in quiz_lines:
            ql_s = ql.strip()
            m_q = re.match(r'\*\*Q(\d+)\.\*\*\s*(.*)', ql_s)
            if m_q:
                if current_q is not None:
                    questions.append((current_q, current_correct, options_buf))
                current_q = (m_q.group(1), m_q.group(2))
                current_correct = None
                options_buf = []
                continue

            m_opt = re.match(r'-\s+\[([ xX])\]\s+\(([a-e])\)\s*(.*)', ql_s)
            if m_opt:
                is_correct = m_opt.group(1).lower() == 'x'
                val = m_opt.group(2)
                txt = m_opt.group(3)
                if is_correct:
                    current_correct = val
                options_buf.append((val, txt))
                continue

        if current_q is not None:
            questions.append((current_q, current_correct, options_buf))

        for (qnum, qtext), correct, opts in questions:
            correct = correct or 'a'
            quiz_html.append(f'<div class="quiz-question" data-question="q{qnum}" data-correct="{correct}">')
            quiz_html.append(f'<div class="q-text">Q{qnum}. {qtext}</div>')
            for val, txt in opts:
                quiz_html.append(f'<div class="quiz-option" data-value="{val}">({val}) {txt}</div>')
            quiz_html.append('<div class="quiz-feedback"></div>')
            quiz_html.append('</div>')

        quiz_html.append(f'<div class="quiz-submit"><button class="btn btn-primary" id="quiz-submit" onclick="MicroQuiz.submit(\'{pageid}\')">Enviar Quiz</button></div>')
        quiz_html.append('</div>')

        # Convert $...$ math to \(...\) since quiz bypasses Pandoc
        quiz_raw = '\n'.join(quiz_html)
        quiz_raw = re.sub(r'\$\$(.+?)\$\$', r'\\[\1\\]', quiz_raw)
        quiz_raw = re.sub(r'\$(.+?)\$', r'\\(\1\\)', quiz_raw)

        # Store quiz and emit placeholder (Pandoc won't touch it)
        quiz_key = f'QUIZPLACEHOLDER{len(saved_blocks)}'
        saved_blocks[quiz_key] = quiz_raw
        output.append(f'\n\n{quiz_key}\n\n')
        continue

    # ── Regular line ──
    output.append(line)
    idx += 1

preprocessed = ''.join(output)

# ── Pass 2: Pandoc conversion ──
with tempfile.NamedTemporaryFile(mode='w', suffix='.md', delete=False, encoding='utf-8') as tmp:
    tmp.write(preprocessed)
    tmp_path = tmp.name

try:
    result = subprocess.run(
        ['pandoc', tmp_path,
         '--from', 'markdown+tex_math_dollars+raw_html',
         '--to', 'html5',
         '--mathjax',
         '--no-highlight',
         '--columns=9999'],
        capture_output=True, text=True, timeout=30
    )
    body = result.stdout
    if result.returncode != 0:
        result2 = subprocess.run(
            ['pandoc', tmp_path, '--from', 'markdown+raw_html', '--to', 'html5'],
            capture_output=True, text=True, timeout=30
        )
        body = result2.stdout
finally:
    os.unlink(tmp_path)

# ── Pass 2b: Re-insert protected blocks ──
for key, block_html in saved_blocks.items():
    # Pandoc may have wrapped the placeholder in <p> tags
    body = body.replace(f'<p>{key}</p>', block_html)
    body = body.replace(key, block_html)

# ── Pass 3: Extract title ──
m_title = re.search(r'<h1[^>]*>(.*?)</h1>', body, re.DOTALL)
if m_title:
    title = re.sub(r'<[^>]+>', '', m_title.group(1))
    title = ' '.join(title.split())  # normalize whitespace from multiline h1
else:
    title = f"Aula {pageid.split('-')[1]}"

# ── Pass 4: Inject into template ──
with open(template_path, 'r', encoding='utf-8') as f:
    template = f.read()

html = template.replace('$title$', title)
html = html.replace('$pageid$', pageid)
html = html.replace('$body$', body)

with open(out_path, 'w', encoding='utf-8') as f:
    f.write(html)

PYEOF

  echo "OK"
done

echo ""
echo "=== Conversao completa! ==="
echo "$(ls $OUT_DIR/aula-*.html 2>/dev/null | wc -l) arquivos HTML gerados em $OUT_DIR/"

#!/usr/bin/env bash
# build.sh — Converte os 24 pré-aula .md em HTML com tracking
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

for i in $(seq -w 1 24); do
  SRC="$SRC_DIR/aula-${i}-pre.md"
  OUT="$OUT_DIR/aula-${i}.html"
  PAGEID="aula-${i}"

  if [ ! -f "$SRC" ]; then
    echo "SKIP: $SRC not found"
    continue
  fi

  echo -n "  aula-${i}-pre.md → aula-${i}.html ... "

  # Step 1: Pre-process MkDocs admonitions → HTML
  python3 -c "
import re, sys

text = open('$SRC', 'r').read()

# Convert !!! admonitions to HTML
def convert_admonition(match):
    indent = match.group(1)
    atype = match.group(2).lower()
    title = match.group(3).strip().strip('\"') if match.group(3) else atype.capitalize()
    # Find the indented content block
    content_lines = []
    remaining = text[match.end():]
    for line in remaining.split('\n'):
        if line.startswith('    ') or line.strip() == '':
            content_lines.append(line[4:] if line.startswith('    ') else '')
        else:
            break
    content = '\n'.join(content_lines).strip()
    return f'<div class=\"admonition {atype}\"><div class=\"admonition-title\">{title}</div>\n\n{content}\n\n</div>'

# Convert ??? collapsible to HTML details
def convert_collapsible(match):
    atype = match.group(1).lower()
    title = match.group(2).strip().strip('\"') if match.group(2) else atype.capitalize()
    content_lines = []
    remaining = text[match.end():]
    for line in remaining.split('\n'):
        if line.startswith('    ') or line.strip() == '':
            content_lines.append(line[4:] if line.startswith('    ') else '')
        else:
            break
    content = '\n'.join(content_lines).strip()
    return f'<details><summary>{title}</summary><div class=\"solution-body\">\n\n{content}\n\n</div></details>'

# Process collapsibles first (??? before !!!)
text = re.sub(r'^(\s*)\?\?\?\+?\s+(\w+)\s*(.*?)$', convert_collapsible, text, flags=re.MULTILINE)
text = re.sub(r'^(\s*)\!\!\!\s+(\w+)\s*(.*?)$', convert_admonition, text, flags=re.MULTILINE)

# Convert quiz checkboxes to interactive quiz HTML
def convert_quiz_block(text):
    # Find quiz containers
    lines = text.split('\n')
    in_quiz = False
    quiz_lines = []
    other_lines = []
    q_count = 0

    for line in lines:
        if '<div class=\"quiz-container\"' in line:
            in_quiz = True
            other_lines.append('<div class=\"quiz-container\"><div class=\"quiz-header\"><h3>Quiz Pre-Aula</h3><div class=\"quiz-score\">Pontuacao: <span id=\"quiz-score\">0/0</span></div></div>')
            continue
        if in_quiz and '</div>' in line and 'quiz-container' not in line:
            # Check if this closes the quiz
            pass

        if in_quiz:
            # Convert **Q1.** text to quiz question
            m = re.match(r'\*\*Q(\d+)\.\*\*\s*(.*)', line)
            if m:
                q_count += 1
                qid = 'q' + m.group(1)
                # Find correct answer in next lines
                other_lines.append(f'<div class=\"quiz-question\" data-question=\"{qid}\" data-correct=\"\">')
                other_lines.append(f'<div class=\"q-text\">Q{m.group(1)}. {m.group(2)}</div>')
                continue
            # Convert - [x] or - [ ] to options
            m_opt = re.match(r'- \[([ x])\]\s*\(([a-e])\)\s*(.*)', line)
            if m_opt:
                is_correct = m_opt.group(1) == 'x'
                val = m_opt.group(2)
                txt = m_opt.group(3)
                if is_correct:
                    # Update data-correct on parent
                    for j in range(len(other_lines)-1, -1, -1):
                        if 'data-correct=\"\"' in other_lines[j]:
                            other_lines[j] = other_lines[j].replace('data-correct=\"\"', f'data-correct=\"{val}\"')
                            break
                other_lines.append(f'<div class=\"quiz-option\" data-value=\"{val}\">({val}) {txt}</div>')
                continue
            if line.strip() == '' and q_count > 0:
                other_lines.append('<div class=\"quiz-feedback\"></div></div>')
                continue

        other_lines.append(line)

    # Close last question if needed
    result = '\n'.join(other_lines)
    # Add submit button before closing quiz div
    result = result.replace('</div>\n\n---', '<div class=\"quiz-feedback\"></div></div><div class=\"quiz-submit\"><button class=\"btn btn-primary\" id=\"quiz-submit\" onclick=\"MicroQuiz.submit(\\'{}\\')\">Enviar Quiz</button></div></div>\n\n---'.format('PAGEID'))
    return result

text = convert_quiz_block(text)

print(text)
" > /tmp/pre_${i}.md

  # Step 2: Pandoc convert to HTML body
  pandoc /tmp/pre_${i}.md \
    --from markdown+tex_math_dollars+raw_html \
    --to html5 \
    --mathjax \
    --no-highlight \
    -o /tmp/body_${i}.html 2>/dev/null || pandoc /tmp/pre_${i}.md --from markdown --to html5 -o /tmp/body_${i}.html

  # Step 3: Extract title from first H1
  TITLE=$(grep -m1 '<h1' /tmp/body_${i}.html | sed 's/<[^>]*>//g' | head -1)
  [ -z "$TITLE" ] && TITLE="Aula ${i}"

  # Step 4: Inject into template
  sed -e "s|\\\$title\\\$|${TITLE}|g" \
      -e "s|\\\$pageid\\\$|${PAGEID}|g" \
      "$TEMPLATE" | \
  python3 -c "
import sys
template = sys.stdin.read()
body = open('/tmp/body_${i}.html').read()
# Replace \$body\$ placeholder
result = template.replace('\$body\$', body)
# Fix quiz submit page ID
result = result.replace(\"PAGEID\", \"${PAGEID}\")
print(result)
" > "$OUT"

  echo "OK"
  rm -f /tmp/pre_${i}.md /tmp/body_${i}.html
done

echo ""
echo "=== Conversao completa! ==="
echo "$(ls $OUT_DIR/aula-*.html 2>/dev/null | wc -l) arquivos HTML gerados em $OUT_DIR/"

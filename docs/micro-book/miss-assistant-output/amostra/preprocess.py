#!/usr/bin/env python3
"""
Miss Assistant — MkDocs Markdown → Pandoc-friendly Markdown preprocessor.
Converts MkDocs-specific elements to pandoc-compatible format for PDF generation.
"""

import re
import sys
from pathlib import Path

BASE = Path("/home/darciogm1/projetos/darciogm.github.io/docs/micro-book")

# Admonition type → (LaTeX env name, display title override or None, color name)
ADMONITION_MAP = {
    "definition": ("definition", "Definição", "defblue"),
    "theorem": ("theorem", "Teorema", "defblue"),
    "abstract": ("theorem", None, "defblue"),
    "proof": ("proof", "Demonstração", "gray"),
    "idea": ("intuition", "Intuição Econômica", "insper"),
    "tip": ("tip", None, "tipgreen"),
    "note": ("note", None, "defblue"),
    "warning": ("warning", None, "warnorange"),
    "example": ("example", None, "exampurple"),
    "success": ("success", None, "tipgreen"),
    "info": ("info", None, "defblue"),
    "question": ("info", None, "defblue"),
    "box-brasil": ("boxbrasil", None, "brasilgreen"),
    "box-mundo": ("boxmundo", None, "mundoblue"),
    "exercicio-resolvido": ("exresolvido", "Exercício Resolvido", "exampurple"),
    "exercicio-proposto": ("exresolvido", "Exercício Proposto", "exampurple"),
    "classroom": ("classroom", "Atividade de Sala", "insper"),
    "atividade": ("classroom", "Atividade de Sala", "insper"),
    "pesquisa": ("pesquisa", "Pesquisa em Ação", "mundoblue"),
}


def parse_admonition_block(lines, start_idx):
    """Parse an admonition starting at start_idx. Returns (end_idx, type, title, content_lines)."""
    line = lines[start_idx]
    m = re.match(r'^(\?{3}|!{3})\s+(\S+)\s+"([^"]*)"', line)
    if not m:
        m = re.match(r'^(\?{3}|!{3})\s+(\S+)\s*$', line)
        if not m:
            return start_idx, None, None, []
        adm_type = m.group(2)
        title = ""
    else:
        adm_type = m.group(2)
        title = m.group(3)

    # Collect indented content
    content_lines = []
    idx = start_idx + 1
    while idx < len(lines):
        l = lines[idx]
        if l.startswith("    "):
            content_lines.append(l[4:])  # remove 4-space indent
        elif l.strip() == "":
            # blank line might be part of content if followed by indented
            if idx + 1 < len(lines) and lines[idx + 1].startswith("    "):
                content_lines.append("")
            else:
                break
        else:
            break
        idx += 1

    return idx - 1, adm_type, title, content_lines


def convert_admonition_to_latex(adm_type, title, content_lines):
    """Convert admonition to pandoc fenced div with class for Lua filter."""
    mapping = ADMONITION_MAP.get(adm_type, ("note", None, "defblue"))
    env_name, default_title, color = mapping

    display_title = title if title else (default_title if default_title else adm_type.replace("-", " ").title())

    # Clean up emoji from title
    display_title = re.sub(r'[⚠️🔍💡📌🎯🏆]', '', display_title).strip()

    content = "\n".join(content_lines)

    # Use pandoc fenced div syntax — content stays as markdown
    return f"""
::: {{.{env_name}box title="{display_title}"}}
{content}
:::
"""


def process_mathjax(text):
    """Convert MathJax delimiters to pandoc-compatible format."""
    # \( ... \) → $ ... $ (inline) — but only when not inside $$ blocks
    text = re.sub(r'\\\(', '$', text)
    text = re.sub(r'\\\)', '$', text)
    # \[ ... \] → $$ ... $$ (display math) — pandoc needs $$ not \[\]
    # Handle multiline display math
    text = re.sub(r'^\\\[', '$$', text, flags=re.MULTILINE)
    text = re.sub(r'^\\\]', '$$', text, flags=re.MULTILINE)
    # Also handle inline \[...\] on same line
    text = re.sub(r'\\\[', '\n$$\n', text)
    text = re.sub(r'\\\]', '\n$$\n', text)
    # \eqref → (ref) text
    text = re.sub(r'\$\\eqref\{([^}]+)\}\$', r'(\\ref{\1})', text)
    text = re.sub(r'\\eqref\{([^}]+)\}', r'(\\ref{\1})', text)
    return text


def process_iframes(text):
    """Replace iframes with placeholder for static figure + QR code."""
    def replace_iframe(m):
        src = m.group(1)
        height = m.group(2) if m.group(2) else "590"
        # Extract figure info from surrounding caption
        return f"\\figurePlaceholder{{{src}}}"

    text = re.sub(
        r'<iframe\s+src="([^"]+)"[^>]*?(?:height="(\d+)")?[^>]*?></iframe>',
        replace_iframe,
        text
    )
    return text


def process_caption_divs(text):
    """Convert caption divs to simple bold text."""
    text = re.sub(
        r'<div\s+class="caption-obj"[^>]*>\s*\n?\s*<p>(.*?)</p>\s*\n?\s*</div>',
        r'\n\1\n',
        text,
        flags=re.DOTALL
    )
    # Also handle markdown variant
    text = re.sub(
        r'<div\s+class="caption-obj"\s+markdown>\s*\n',
        '\n',
        text
    )
    text = text.replace('</div>', '')
    return text


def process_tabs(text):
    """Convert MkDocs tabs to sequential sections."""
    text = re.sub(r'^=== "([^"]+)"', r'**\1**', text, flags=re.MULTILINE)
    return text


def process_icons(text):
    """Replace Material Design icons with Unicode equivalents and remove unsupported emoji."""
    replacements = {
        ':material-check:': '✓',
        ':material-check-circle:': '✓',
        ':material-close:': '✗',
        ':octicons-x-16:': '✗',
        ':material-arrow-right:': '→',
        ':material-lightbulb:': '',
        ':material-alert:': '',
        ':material-book:': '',
    }
    for icon, repl in replacements.items():
        text = text.replace(icon, repl)
    # Generic fallback
    text = re.sub(r':material-[a-z-]+:', '', text)
    text = re.sub(r':octicons-[a-z0-9-]+:', '', text)
    # Remove emoji that fonts can't render
    text = re.sub(r'[🔍💡📌🎯🏆🔬📚✏️🔑📊🎓📈📉🌍🇧🇷⚠️]', '', text)
    return text


def process_internal_links(text):
    """Convert internal markdown links to print-friendly references."""
    # [text](../capXX/file.md) → text (Cap. XX)
    def repl_link(m):
        link_text = m.group(1)
        path = m.group(2)
        cap_m = re.search(r'cap(\d+)', path)
        if cap_m:
            return f"{link_text} (Cap. {int(cap_m.group(1))})"
        sol_m = re.search(r'solucoes', path)
        if sol_m:
            return link_text  # just keep text, remove solution links
        return link_text

    text = re.sub(r'\[([^\]]+)\]\((\.\./[^)]+)\)', repl_link, text)
    # Same-dir links
    text = re.sub(r'\[([^\]]+)\]\(([a-z-]+\.md[^)]*)\)', r'\1', text)
    return text


def process_html_elements(text):
    """Clean up remaining HTML elements."""
    # Remove chapter-roadmap divs but keep content
    text = re.sub(r'<div\s+class="chapter-roadmap"[^>]*>', '', text)
    # Remove anchor tags
    text = re.sub(r'<a\s+id="[^"]*"></a>', '', text)
    # Remove remaining div tags
    text = re.sub(r'</?div[^>]*>', '', text)
    # Remove hide frontmatter
    text = re.sub(r'^---\s*\nhide:.*?---\s*\n', '', text, flags=re.DOTALL)
    return text


def process_file(filepath):
    """Process a single markdown file."""
    text = filepath.read_text(encoding='utf-8')

    # Remove YAML frontmatter
    if text.startswith('---'):
        end = text.find('---', 3)
        if end != -1:
            text = text[end + 3:].lstrip('\n')

    lines = text.split('\n')
    output_lines = []
    i = 0

    while i < len(lines):
        line = lines[i]

        # Check for admonition
        if re.match(r'^(\?{3}|!{3})\s+\S+', line):
            end_idx, adm_type, title, content_lines = parse_admonition_block(lines, i)
            if adm_type:
                latex_block = convert_admonition_to_latex(adm_type, title, content_lines)
                output_lines.append(latex_block)
                i = end_idx + 1
                continue

        output_lines.append(line)
        i += 1

    text = '\n'.join(output_lines)

    # Apply transformations
    text = process_mathjax(text)
    text = process_iframes(text)
    text = process_caption_divs(text)
    text = process_tabs(text)
    text = process_icons(text)
    text = process_internal_links(text)
    text = process_html_elements(text)

    # Clean up multiple blank lines
    text = re.sub(r'\n{4,}', '\n\n\n', text)

    return text


def demote_headings(text):
    """Demote all headings by one level (# → ##, ## → ###, etc.)."""
    lines = text.split('\n')
    result = []
    for line in lines:
        if re.match(r'^#{1,5}\s', line):
            result.append('#' + line)
        else:
            result.append(line)
    return '\n'.join(result)


def build_chapter(cap_dir, section_order):
    """Build a complete chapter from its section files."""
    parts = []
    for i, filename in enumerate(section_order):
        filepath = BASE / cap_dir / filename
        if filepath.exists():
            content = process_file(filepath)
            if i == 0:
                # First file (index.md) keeps its heading level as chapter title
                parts.append(content)
            else:
                # Section files: demote headings so # → ##, ## → ###
                parts.append(demote_headings(content))
        else:
            print(f"WARNING: {filepath} not found", file=sys.stderr)

    return "\n\n".join(parts)


# Chapter definitions: directory, ordered list of files
CHAPTERS = {
    "cap03": {
        "dir": "cap03",
        "files": ["index.md", "axiomas.md", "tms.md", "preferencias.md",
                   "exercicios.md", "pesquisa.md"],
    },
    "cap15": {
        "dir": "cap15",
        "files": ["index.md", "barreiras-maximizacao.md", "lerner-ineficiencia.md",
                   "qualidade-discriminacao.md", "regulacao-dinamica.md",
                   "exercicios.md", "pesquisa.md"],
    },
    "cap20": {
        "dir": "cap20",
        "files": ["index.md", "externalidades.md", "modelo-solucoes.md",
                   "bens-publicos.md", "lindahl-carona.md", "votacao-mecanismos.md",
                   "exercicios.md", "pesquisa.md"],
    },
}


def main():
    output_parts = []

    chapter_counters = {"cap03": 2, "cap15": 14, "cap20": 19}  # counter = chapter_num - 1

    for cap_key in ["cap03", "cap15", "cap20"]:
        chap = CHAPTERS[cap_key]
        counter = chapter_counters[cap_key]
        output_parts.append(f"\\setcounter{{chapter}}{{{counter}}}")
        output_parts.append(f"\\setcounter{{section}}{{0}}")
        content = build_chapter(chap["dir"], chap["files"])
        output_parts.append(content)
        output_parts.append("\\newpage")

    full_text = "\n\n".join(output_parts)
    print(full_text)


if __name__ == "__main__":
    main()

#!/usr/bin/env python3
"""
Miss Assistant — Full book preprocessor for DOCX editorial review.
Converts all chapters from MkDocs markdown to pandoc-friendly markdown.
Simpler than PDF version: no tcolorbox, just clean markdown with styled divs.
"""

import re
import sys
from pathlib import Path

BASE = Path("/home/darciogm1/projetos/darciogm.github.io/docs/micro-book")

# ── Chapter definitions: directory → ordered list of section files ──
# Based on mkdocs.yml nav structure + actual files in each directory

CHAPTERS = [
    ("prefacio", ["prefacio.md"], None),  # (dir, files, parent_dir_override)
    ("cap01", ["index.md", "modelos.md", "fundamentos.md", "valor.md", "maximizacao.md", "exercicios.md", "pesquisa.md"], None),
    ("cap02", ["index.md", "otimizacao.md", "lagrange.md", "kuhn-tucker.md", "envelope.md", "complementos.md", "curvatura.md"], None),
    ("cap03", ["index.md", "axiomas.md", "tms.md", "preferencias.md", "exercicios.md", "pesquisa.md"], None),
    ("cap04", ["index.md", "problema.md", "utilidade-indireta.md", "dualidade.md", "catalogo.md", "exercicios.md", "pesquisa.md"], None),
    ("cap05", ["index.md", "propriedades.md", "slutsky.md", "elasticidades.md", "excedente.md", "exercicios.md", "pesquisa.md"], None),
    ("cap06", ["index.md", "relacoes.md", "composto.md", "agregacao.md", "exercicios.md", "pesquisa.md"], None),
    ("cap07", ["index.md", "loterias.md", "risco.md", "ferramentas.md", "estado.md", "exercicios.md", "pesquisa.md"], None),
    ("cap08", ["index.md", "heuristicas.md", "prospecto.md", "desconto.md", "nudges.md", "preferencias-sociais.md", "ambiguidade.md", "exercicios.md", "pesquisa.md"], None),
    ("cap09a", ["index.md", "fundamentos.md", "estrategias-dominantes.md", "nash.md", "estrategias-mistas.md", "oligopolio.md", "exercicios.md", "pesquisa.md"], None),
    ("cap09b", ["index.md", "backward-induction.md", "barganha.md", "jogos-repetidos.md", "exercicios.md", "pesquisa.md"], None),
    ("cap09c", ["index.md", "tipos-bayesiano.md", "mecanismos.md", "leiloes.md", "exercicios.md", "pesquisa.md"], None),
    ("cap09d", ["index.md", "selecao-adversa.md", "sinalizacao.md", "pbe.md", "moral-hazard.md", "cheap-talk.md", "exercicios.md", "pesquisa.md"], None),
    ("cap10", ["index.md", "produtividade.md", "isoquantas.md", "elasticidade.md", "funcoes.md", "progresso.md", "exercicios.md", "pesquisa.md"], None),
    ("cap11", ["index.md", "definicoes.md", "minimizacao.md", "curvas.md", "envoltoria.md", "catalogo.md", "exercicios.md", "pesquisa.md"], None),
    ("cap12", ["index.md", "natureza-firma.md", "maximizacao.md", "oferta.md", "funcao-lucro.md", "exercicios.md", "pesquisa.md"], None),
    ("cap13", ["index.md", "demanda-mercado.md", "equilibrio.md", "longo-prazo.md", "eficiencia.md", "politicas.md", "exercicios.md", "pesquisa.md"], None),
    ("cap14", ["index.md", "sistema-precos.md", "eficiencia-pareto.md", "teoremas-bem-estar.md", "modelo-matematico.md", "cge.md", "escolha-social.md", "exercicios.md", "pesquisa.md"], None),
    ("cap15", ["index.md", "barreiras-maximizacao.md", "lerner-ineficiencia.md", "qualidade-discriminacao.md", "regulacao-dinamica.md", "exercicios.md", "pesquisa.md"], None),
    ("cap16a", ["index.md", "fundamentos.md", "capacidade-diferenciacao.md", "exercicios.md", "pesquisa.md"], None),
    ("cap16b", ["index.md", "colusao-entrada.md", "entrada-inovacao.md", "monopolistica-fusoes.md", "exercicios.md", "pesquisa.md"], None),
    ("cap17", ["index.md", "oferta-trabalho.md", "equilibrio-diferenciais.md", "monopsonio-sindicatos.md", "fatores-terra.md", "exercicios.md", "pesquisa.md"], None),
    ("cap18", ["index.md", "capital-juros.md", "fisher-inflacao.md", "ativos-investimento.md", "demanda-capital.md", "hotelling.md", "exercicios.md", "pesquisa.md"], None),
    ("cap19", ["index.md", "principal-agente.md", "risco-moral.md", "selecao-adversa.md", "sinalizacao-screening.md", "leiloes-taxonomia.md", "matching-markets.md", "exercicios.md", "pesquisa.md"], None),
    ("cap20", ["index.md", "externalidades.md", "modelo-solucoes.md", "bens-publicos.md", "lindahl-carona.md", "votacao-mecanismos.md", "exercicios.md", "pesquisa.md"], None),
    ("cap21", ["index.md", "bens-info-redes.md", "mercados-bilaterais.md", "competicao-atencao.md", "dados-leiloes.md", "exercicios.md", "pesquisa.md"], None),
    ("cap22", ["index.md", "experimentacao-lab.md", "campo-rcts.md", "naturais-mecanismos-limites.md", "exercicios.md", "pesquisa.md"], None),
    ("cap23", ["index.md", "arrow-grossman.md", "demanda-oferta.md", "seguros-sistemas.md", "avaliacao-externalidades.md", "regulacao-farmaceutica.md", "exercicios.md", "pesquisa.md"], None),
    ("cap24", ["index.md", "politica-instrumentos.md", "clima-carbono.md", "valoracao-recursos.md", "exercicios.md", "pesquisa.md"], None),
]

# ── Admonition handling (simplified for DOCX) ──

ADMONITION_LABELS = {
    "definition": "DEFINICAO",
    "theorem": "TEOREMA",
    "abstract": "RESUMO",
    "proof": "DEMONSTRACAO",
    "idea": "INTUICAO ECONOMICA",
    "tip": "DICA",
    "note": "NOTA",
    "warning": "ATENCAO",
    "example": "EXEMPLO",
    "success": "RESPOSTA",
    "info": "INFORMACAO",
    "question": "QUESTAO",
    "box-brasil": "BOX BRASIL",
    "box-mundo": "BOX MUNDO",
    "exercicio-resolvido": "EXERCICIO RESOLVIDO",
    "exercicio-proposto": "EXERCICIO PROPOSTO",
    "classroom": "ATIVIDADE DE SALA",
    "atividade": "ATIVIDADE DE SALA",
    "pesquisa": "PESQUISA EM ACAO",
}


def parse_admonition_block(lines, start_idx):
    """Parse an admonition block starting at start_idx."""
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

    content_lines = []
    idx = start_idx + 1
    while idx < len(lines):
        l = lines[idx]
        if l.startswith("    "):
            content_lines.append(l[4:])
        elif l.strip() == "":
            if idx + 1 < len(lines) and lines[idx + 1].startswith("    "):
                content_lines.append("")
            else:
                break
        else:
            break
        idx += 1

    return idx - 1, adm_type, title, content_lines


def convert_admonition_for_docx(adm_type, title, content_lines):
    """Convert admonition to simple blockquote with label for DOCX."""
    label = ADMONITION_LABELS.get(adm_type, adm_type.upper())
    display_title = title if title else label

    # Clean emoji
    display_title = re.sub(r'[⚠️🔍💡📌🎯🏆🔬📚✏️🔑📊🎓📈📉🌍🇧🇷]', '', display_title).strip()

    content = "\n> ".join(content_lines)

    return f"""
> **[{label}] {display_title}**
>
> {content}

"""


def process_mathjax(text):
    """Convert MathJax delimiters to pandoc format."""
    text = re.sub(r'\\\(', '$', text)
    text = re.sub(r'\\\)', '$', text)
    text = re.sub(r'^\\\[', '$$', text, flags=re.MULTILINE)
    text = re.sub(r'^\\\]', '$$', text, flags=re.MULTILINE)
    text = re.sub(r'\\\[', '\n$$\n', text)
    text = re.sub(r'\\\]', '\n$$\n', text)
    text = re.sub(r'\$\\eqref\{([^}]+)\}\$', r'Eq. (\1)', text)
    text = re.sub(r'\\eqref\{([^}]+)\}', r'Eq. (\1)', text)
    return text


def process_iframes(text):
    """Replace iframes with text placeholder."""
    def replace_iframe(m):
        src = m.group(1)
        return f"\n\n[FIGURA INTERATIVA: {src} — versao interativa disponivel online]\n\n"

    text = re.sub(
        r'<iframe\s+src="([^"]+)"[^>]*></iframe>',
        replace_iframe,
        text
    )
    return text


def process_icons(text):
    """Remove MkDocs icons and unsupported emoji."""
    text = re.sub(r':material-[a-z-]+:', '', text)
    text = re.sub(r':octicons-[a-z0-9-]+:', '', text)
    text = re.sub(r'[🔍💡📌🎯🏆🔬📚✏️🔑📊🎓📈📉🌍🇧🇷⚠️]', '', text)
    return text


def process_internal_links(text):
    """Convert internal links to text references."""
    def repl_link(m):
        link_text = m.group(1)
        path = m.group(2)
        cap_m = re.search(r'cap(\d+)', path)
        if cap_m:
            return f"{link_text} (Cap. {int(cap_m.group(1))})"
        return link_text

    text = re.sub(r'\[([^\]]+)\]\((\.\./[^)]+)\)', repl_link, text)
    text = re.sub(r'\[([^\]]+)\]\(([a-z-]+\.md[^)]*)\)', r'\1', text)
    return text


def process_html_elements(text):
    """Clean up HTML elements."""
    text = re.sub(r'^---\s*\nhide:.*?---\s*\n', '', text, flags=re.DOTALL)
    text = re.sub(r'<div\s+class="[^"]*"[^>]*>', '', text)
    text = re.sub(r'</div>', '', text)
    text = re.sub(r'<a\s+id="[^"]*"></a>', '', text)
    text = re.sub(r'</?p>', '', text)
    return text


def process_tabs(text):
    """Convert tabs to sequential sections."""
    text = re.sub(r'^=== "([^"]+)"', r'**\1**', text, flags=re.MULTILINE)
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
        if re.match(r'^(\?{3}|!{3})\s+\S+', line):
            end_idx, adm_type, title, content_lines = parse_admonition_block(lines, i)
            if adm_type:
                block = convert_admonition_for_docx(adm_type, title, content_lines)
                output_lines.append(block)
                i = end_idx + 1
                continue
        output_lines.append(line)
        i += 1

    text = '\n'.join(output_lines)
    text = process_mathjax(text)
    text = process_iframes(text)
    text = process_tabs(text)
    text = process_icons(text)
    text = process_internal_links(text)
    text = process_html_elements(text)
    text = re.sub(r'\n{4,}', '\n\n\n', text)

    return text


def demote_headings(text):
    """Demote all headings by one level."""
    lines = text.split('\n')
    result = []
    for line in lines:
        if re.match(r'^#{1,5}\s', line):
            result.append('#' + line)
        else:
            result.append(line)
    return '\n'.join(result)


def build_chapter(cap_dir, section_files):
    """Build a complete chapter from its section files."""
    parts = []
    for i, filename in enumerate(section_files):
        # Handle prefacio special case
        if cap_dir == "prefacio":
            filepath = BASE / filename
        else:
            filepath = BASE / cap_dir / filename

        if not filepath.exists():
            print(f"WARNING: {filepath} not found", file=sys.stderr)
            continue

        content = process_file(filepath)
        if i > 0:
            content = demote_headings(content)
        parts.append(content)

    return "\n\n".join(parts)


def main():
    output_parts = []

    # Title page info (as markdown)
    output_parts.append("""---
title: "Microeconomia: Do Zero ao Equilibrio (e Alem)"
author: "Darcio Genicolo Martins"
date: "Marco 2026"
lang: pt-BR
---

# Microeconomia: Do Zero ao Equilibrio (e Alem)

**Autor:** Prof. Darcio Genicolo Martins — Insper

**Versao:** 1.3 — Marco 2026

**Documento para revisao editorial**

---

""")

    for cap_dir, files, parent_override in CHAPTERS:
        print(f"Processing {cap_dir}...", file=sys.stderr)
        content = build_chapter(cap_dir, files)
        output_parts.append(content)
        output_parts.append("\n\n\\newpage\n\n")

    full_text = "\n\n".join(output_parts)
    print(full_text)


if __name__ == "__main__":
    main()

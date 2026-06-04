#!/usr/bin/env python3
"""
Miss Assistant — Full book preprocessor for print-ready PDF.
Converts all chapters from MkDocs markdown to pandoc+LaTeX-compatible markdown.
Uses fenced divs for admonitions (processed by boxes.lua filter).
"""

import re
import sys
from pathlib import Path

BASE = Path("/home/darciogm1/projetos/darciogm.github.io/docs/micro-book")

# ── Part definitions ──
PARTS = {
    "cap01": ("I", "Ferramentas"),
    "cap03": ("II", "O Consumidor"),
    "cap07": ("III", "Decisão sob Risco e Interação Estratégica"),
    "cap10": ("IV", "A Firma e os Custos"),
    "cap13": ("V", "Mercados Competitivos"),
    "cap15": ("VI", "Poder de Mercado"),
    "cap17": ("VII", "Fatores e Tempo"),
    "cap19": ("VIII", "Falhas de Mercado"),
    "cap21": ("IX", "Economia Digital"),
    "cap22": ("X", "Métodos"),
    "cap23": ("XI", "Economia da Saúde"),
    "cap24": ("XII", "Economia Ambiental"),
}

# ── Chapter definitions ──
CHAPTERS = [
    ("prefacio", ["prefacio.md"], 0),
    ("cap01", ["index.md", "modelos.md", "fundamentos.md", "valor.md", "maximizacao.md", "exercicios.md", "pesquisa.md"], 1),
    ("cap02", ["index.md", "otimizacao.md", "lagrange.md", "kuhn-tucker.md", "envelope.md", "complementos.md", "curvatura.md"], 2),
    ("cap03", ["index.md", "axiomas.md", "tms.md", "preferencias.md", "exercicios.md", "pesquisa.md"], 3),
    ("cap04", ["index.md", "problema.md", "utilidade-indireta.md", "dualidade.md", "catalogo.md", "exercicios.md", "pesquisa.md"], 4),
    ("cap05", ["index.md", "propriedades.md", "slutsky.md", "elasticidades.md", "excedente.md", "exercicios.md", "pesquisa.md"], 5),
    ("cap06", ["index.md", "relacoes.md", "composto.md", "agregacao.md", "exercicios.md", "pesquisa.md"], 6),
    ("cap07", ["index.md", "loterias.md", "risco.md", "ferramentas.md", "estado.md", "exercicios.md", "pesquisa.md"], 7),
    ("cap08", ["index.md", "heuristicas.md", "prospecto.md", "desconto.md", "nudges.md", "preferencias-sociais.md", "ambiguidade.md", "exercicios.md", "pesquisa.md"], 8),
    ("cap09a", ["index.md", "fundamentos.md", "estrategias-dominantes.md", "nash.md", "estrategias-mistas.md", "oligopolio.md", "exercicios.md", "pesquisa.md"], 9),
    ("cap09b", ["index.md", "backward-induction.md", "barganha.md", "jogos-repetidos.md", "exercicios.md", "pesquisa.md"], 10),
    ("cap09c", ["index.md", "tipos-bayesiano.md", "mecanismos.md", "leiloes.md", "exercicios.md", "pesquisa.md"], 11),
    ("cap09d", ["index.md", "selecao-adversa.md", "sinalizacao.md", "pbe.md", "moral-hazard.md", "cheap-talk.md", "exercicios.md", "pesquisa.md"], 12),
    ("cap10", ["index.md", "produtividade.md", "isoquantas.md", "elasticidade.md", "funcoes.md", "progresso.md", "exercicios.md", "pesquisa.md"], 13),
    ("cap11", ["index.md", "definicoes.md", "minimizacao.md", "curvas.md", "envoltoria.md", "catalogo.md", "exercicios.md", "pesquisa.md"], 14),
    ("cap12", ["index.md", "natureza-firma.md", "maximizacao.md", "oferta.md", "funcao-lucro.md", "exercicios.md", "pesquisa.md"], 15),
    ("cap13", ["index.md", "demanda-mercado.md", "equilibrio.md", "longo-prazo.md", "eficiencia.md", "politicas.md", "exercicios.md", "pesquisa.md"], 16),
    ("cap14", ["index.md", "sistema-precos.md", "eficiencia-pareto.md", "teoremas-bem-estar.md", "modelo-matematico.md", "cge.md", "escolha-social.md", "exercicios.md", "pesquisa.md"], 17),
    ("cap15", ["index.md", "barreiras-maximizacao.md", "lerner-ineficiencia.md", "qualidade-discriminacao.md", "regulacao-dinamica.md", "exercicios.md", "pesquisa.md"], 18),
    ("cap16a", ["index.md", "fundamentos.md", "capacidade-diferenciacao.md", "exercicios.md", "pesquisa.md"], 19),
    ("cap16b", ["index.md", "colusao-entrada.md", "entrada-inovacao.md", "monopolistica-fusoes.md", "exercicios.md", "pesquisa.md"], 20),
    ("cap17", ["index.md", "oferta-trabalho.md", "equilibrio-diferenciais.md", "monopsonio-sindicatos.md", "fatores-terra.md", "exercicios.md", "pesquisa.md"], 21),
    ("cap18", ["index.md", "capital-juros.md", "fisher-inflacao.md", "ativos-investimento.md", "demanda-capital.md", "hotelling.md", "exercicios.md", "pesquisa.md"], 22),
    ("cap19", ["index.md", "principal-agente.md", "risco-moral.md", "selecao-adversa.md", "sinalizacao-screening.md", "leiloes-taxonomia.md", "matching-markets.md", "exercicios.md", "pesquisa.md"], 23),
    ("cap20", ["index.md", "externalidades.md", "modelo-solucoes.md", "bens-publicos.md", "lindahl-carona.md", "votacao-mecanismos.md", "exercicios.md", "pesquisa.md"], 24),
    ("cap21", ["index.md", "bens-info-redes.md", "mercados-bilaterais.md", "competicao-atencao.md", "dados-leiloes.md", "exercicios.md", "pesquisa.md"], 25),
    ("cap22", ["index.md", "experimentacao-lab.md", "campo-rcts.md", "naturais-mecanismos-limites.md", "exercicios.md", "pesquisa.md"], 26),
    ("cap23", ["index.md", "arrow-grossman.md", "demanda-oferta.md", "seguros-sistemas.md", "avaliacao-externalidades.md", "regulacao-farmaceutica.md", "exercicios.md", "pesquisa.md"], 27),
    ("cap24", ["index.md", "politica-instrumentos.md", "clima-carbono.md", "valoracao-recursos.md", "exercicios.md", "pesquisa.md"], 28),
]

# ── Admonition → fenced div class mapping ──
ADMONITION_MAP = {
    "definition": "definitionbox",
    "theorem": "theorembox",
    "abstract": "theorembox",
    "proof": "proofbox",
    "idea": "intuitionbox",
    "tip": "tipbox",
    "note": "notebox",
    "warning": "warningbox",
    "example": "examplebox",
    "success": "successbox",
    "info": "infobox",
    "question": "infobox",
    "box-brasil": "boxbrasilbox",
    "box-mundo": "boxmundobox",
    "exercicio-resolvido": "exresolvidobox",
    "exercicio-proposto": "exresolvidobox",
    "classroom": "classroombox",
    "atividade": "classroombox",
    "pesquisa": "pesquisabox",
}

ADMONITION_DEFAULTS = {
    "definition": "Definição",
    "theorem": "Teorema",
    "proof": "Demonstração",
    "idea": "Intuição Econômica",
    "tip": "Dica",
    "note": "Nota",
    "warning": "Atenção",
    "example": "Exemplo",
    "success": "Resposta",
    "info": "Informação",
    "box-brasil": "Box Brasil",
    "box-mundo": "Box Mundo",
    "exercicio-resolvido": "Exercício Resolvido",
    "classroom": "Atividade de Sala",
    "pesquisa": "Pesquisa em Ação",
}


def parse_admonition_block(lines, start_idx):
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


def sanitize_title_for_latex(title):
    """Remove URLs and special chars from box titles to avoid LaTeX errors."""
    # Remove markdown links but keep link text
    title = re.sub(r'\[([^\]]+)\]\([^)]+\)', r'\1', title)
    # Remove bare URLs
    title = re.sub(r'https?://\S+', '', title)
    # Remove markdown formatting (* for italic/bold)
    title = re.sub(r'\*+([^*]+)\*+', r'\1', title)
    # Remove inline math from titles (renders poorly in tcolorbox title)
    title = re.sub(r'\$([^$]+)\$', r'\1', title)
    # Escape LaTeX special chars
    title = title.replace('&', 'e')
    title = title.replace('_', r'\_')
    title = title.replace('#', r'\#')
    title = title.replace('%', r'\%')
    # Remove braces that aren't LaTeX commands
    title = re.sub(r'(?<!\\)[{}]', '', title)
    # Clean up extra spaces
    title = re.sub(r'\s{2,}', ' ', title).strip()
    # Truncate very long titles (some pesquisa boxes have full citations)
    if len(title) > 120:
        title = title[:117] + '...'
    return title


def convert_admonition_to_div(adm_type, title, content_lines):
    div_class = ADMONITION_MAP.get(adm_type, "notebox")
    display_title = title if title else ADMONITION_DEFAULTS.get(adm_type, adm_type.title())
    display_title = re.sub(r'[⚠️🔍💡📌🎯🏆🔬📚✏️🔑📊🎓📈📉🌍🇧🇷]', '', display_title).strip()
    display_title = sanitize_title_for_latex(display_title)
    content = "\n".join(content_lines)
    return f'\n::: {{.{div_class} title="{display_title}"}}\n{content}\n:::\n'


def process_mathjax(text):
    # Protect R$ (Brazilian currency) before converting math delimiters
    text = re.sub(r'R\$\s*(\d)', r'R\\textdollar{}\1', text)
    text = re.sub(r'R\$\s*(\d)', r'R\\textdollar{}\1', text)  # run twice for overlapping
    # Also catch R$ followed by space+digit
    text = re.sub(r'R\$ (\d)', r'R\\textdollar{} \1', text)
    # Convert MathJax delimiters
    text = re.sub(r'\\\(', '$', text)
    text = re.sub(r'\\\)', '$', text)
    text = re.sub(r'^\\\[', '$$', text, flags=re.MULTILINE)
    text = re.sub(r'^\\\]', '$$', text, flags=re.MULTILINE)
    text = re.sub(r'\\\[', '\n$$\n', text)
    text = re.sub(r'\\\]', '\n$$\n', text)
    text = re.sub(r'\$\\eqref\{([^}]+)\}\$', r'(\\ref{\1})', text)
    text = re.sub(r'\\eqref\{([^}]+)\}', r'(\\ref{\1})', text)
    return text


def process_iframes(text):
    text = re.sub(
        r'<iframe\s+src="([^"]+)"[^>]*></iframe>',
        r'\\figurePlaceholder{\1}',
        text
    )
    return text


def process_icons(text):
    text = re.sub(r':material-[a-z-]+:', '', text)
    text = re.sub(r':octicons-[a-z0-9-]+:', '', text)
    text = re.sub(r'[🔍💡📌🎯🏆🔬📚✏️🔑📊🎓📈📉🌍🇧🇷⚠️]', '', text)
    return text


def process_internal_links(text):
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


def process_urls(text):
    """Strip all external URLs to prevent LaTeX underscore issues."""
    # Remove all markdown links to external URLs — keep just the text
    text = re.sub(r'\[([^\]]+)\]\(https?://[^)]+\)', r'\1', text)
    # Remove bare external URLs
    text = re.sub(r'https?://\S+', '', text)
    return text


def process_html_elements(text):
    text = re.sub(r'^---\s*\nhide:.*?---\s*\n', '', text, flags=re.DOTALL)
    text = re.sub(r'<div\s+class="[^"]*"[^>]*>', '', text)
    text = re.sub(r'</div>', '', text)
    text = re.sub(r'<a\s+id="[^"]*"></a>', '', text)
    text = re.sub(r'</?p>', '', text)
    return text


def process_tabs(text):
    text = re.sub(r'^=== "([^"]+)"', r'**\1**', text, flags=re.MULTILINE)
    return text


def process_file(filepath):
    text = filepath.read_text(encoding='utf-8')
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
                block = convert_admonition_to_div(adm_type, title, content_lines)
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
    text = process_urls(text)
    # Post-process: clean $ from fenced div titles (after mathjax conversion)
    def clean_div_title(m):
        prefix = m.group(1)
        title = m.group(2)
        # Remove $...$ from title
        title = re.sub(r'\$([^$]*)\$', r'\1', title)
        # Remove remaining $ signs
        title = title.replace('$', '')
        # Escape backslash commands that might remain
        title = re.sub(r'\\[a-zA-Z]+\{[^}]*\}', '', title)
        title = re.sub(r'\\[a-zA-Z]+', '', title)
        return f'{prefix}"{title}"'
    text = re.sub(r'(::: \{[^}]+ title=)"([^"]*)"', clean_div_title, text)
    text = re.sub(r'\n{4,}', '\n\n\n', text)
    return text


def demote_headings(text):
    lines = text.split('\n')
    result = []
    for line in lines:
        if re.match(r'^#{1,5}\s', line):
            result.append('#' + line)
        else:
            result.append(line)
    return '\n'.join(result)


def build_chapter(cap_dir, section_files):
    parts = []
    for i, filename in enumerate(section_files):
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

    for cap_dir, files, chapter_num in CHAPTERS:
        # Emit part divider if this chapter starts a new part
        if cap_dir in PARTS:
            part_num, part_title = PARTS[cap_dir]
            output_parts.append(f"""
\\newpage
\\thispagestyle{{empty}}
\\vspace*{{6cm}}
\\begin{{center}}
{{\\fontsize{{14}}{{18}}\\selectfont\\sffamily\\textcolor{{gray}}{{PARTE {part_num}}}}}\\\\[1cm]
{{\\fontsize{{28}}{{34}}\\selectfont\\sffamily\\bfseries\\textcolor{{insper}}{{{part_title}}}}}
\\end{{center}}
\\newpage
""")

        # Set chapter counter
        if chapter_num > 0:
            output_parts.append(f"\\setcounter{{chapter}}{{{chapter_num - 1}}}")
            output_parts.append(f"\\setcounter{{section}}{{0}}")

        print(f"Processing {cap_dir}...", file=sys.stderr)
        content = build_chapter(cap_dir, files)
        output_parts.append(content)

    print("\n\n".join(output_parts))


if __name__ == "__main__":
    main()

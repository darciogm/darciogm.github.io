#!/usr/bin/env python3
"""
Gera arquivos de importação para Blackboard Ultra a partir das questões do livro.

Formato Blackboard Ultra (tab-delimited):
  MC\tPergunta\tResposta1\tcorrect\tResposta2\tincorrect\tResposta3\tincorrect\tResposta4\tincorrect
  TF\tAfirmação\ttrue|false

Saída:
  - blackboard/pool_capXX_quiz.txt  (MC da Revisão Rápida)
  - blackboard/pool_capXX_anpec.txt (V/F da seção ANPEC)
  - blackboard/all_quiz.txt         (consolidado MC)
  - blackboard/all_anpec.txt        (consolidado V/F)
  - blackboard/README_importacao.md (instruções)
"""

import re
import os
import glob

BASE = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
OUT = os.path.join(BASE, "recursos", "blackboard")
os.makedirs(OUT, exist_ok=True)

CHAPTERS = [
    "01","02","03","04","05","06","07","08",
    "09a","09b","09c","09d",
    "10","11","12","13","14","15","16","17","18","19","20","21","22","23","24"
]

CHAPTER_NAMES = {
    "01": "Introdução à Microeconomia",
    "02": "Ferramentas Matemáticas",
    "03": "Preferências e Utilidade",
    "04": "Escolha do Consumidor",
    "05": "Demanda",
    "06": "Elasticidade",
    "07": "Incerteza",
    "08": "Economia Comportamental",
    "09a": "Jogos Estáticos",
    "09b": "Jogos Dinâmicos",
    "09c": "Jogos Bayesianos e Leilões",
    "09d": "Sinais e Contratos",
    "10": "Produção",
    "11": "Custos",
    "12": "Oferta Competitiva",
    "13": "Tributação",
    "14": "Equilíbrio Geral",
    "15": "Monopólio",
    "16": "Oligopólio e IO",
    "17": "Economia do Trabalho",
    "18": "Escolha Intertemporal",
    "19": "Informação Assimétrica",
    "20": "Externalidades e Bens Públicos",
    "21": "Economia Digital",
    "22": "Economia Experimental",
    "23": "Economia da Saúde",
    "24": "Economia Ambiental",
}


def clean_latex(text):
    """Remove LaTeX markup for Blackboard plain text."""
    text = text.strip()
    # Remove \( ... \) inline math
    text = re.sub(r'\\\((.+?)\\\)', r'\1', text)
    # Remove \[ ... \] display math
    text = re.sub(r'\\\[(.+?)\\\]', r'\1', text, flags=re.DOTALL)
    # Remove $...$
    text = re.sub(r'\$(.+?)\$', r'\1', text)
    # Remove markdown bold/italic
    text = re.sub(r'\*\*(.+?)\*\*', r'\1', text)
    text = re.sub(r'\*(.+?)\*', r'\1', text)
    # Remove HTML tags
    text = re.sub(r'<[^>]+>', '', text)
    # Normalize whitespace
    text = re.sub(r'\s+', ' ', text).strip()
    # Escape tabs (critical for Blackboard format)
    text = text.replace('\t', ' ')
    return text


def extract_quiz_mc(filepath, cap_id):
    """Extract multiple-choice questions from Revisão Rápida section."""
    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()

    # Find the Revisão Rápida section
    match = re.search(r'## 🧠 Revisão Rápida(.*?)(?=\n## |\Z)', content, re.DOTALL)
    if not match:
        return []

    section = match.group(1)
    questions = []

    # Pattern: ??? question "N. Question text"
    q_blocks = re.split(r'\?\?\? question "(\d+)\.\s*', section)
    # q_blocks[0] is intro text, then pairs of (number, content)

    i = 1
    while i < len(q_blocks) - 1:
        q_num = q_blocks[i]
        q_content = q_blocks[i + 1]
        i += 2

        # Extract question text (first line after the ???)
        lines = q_content.strip().split('\n')
        q_text = lines[0].rstrip('"').strip()

        # Extract options (a)-(d)
        options = {}
        for line in lines:
            line = line.strip()
            m = re.match(r'-\s*\(([a-d])\)\s*(.*)', line)
            if m:
                options[m.group(1)] = m.group(2).strip()

        # Extract correct answer
        correct_letter = None
        for line in lines:
            line = line.strip()
            m = re.match(r'\*\*\(([a-d])\)\*\*', line)
            if m:
                correct_letter = m.group(1)
                break

        if len(options) == 4 and correct_letter and correct_letter in options:
            q = {
                'cap': cap_id,
                'num': q_num,
                'text': clean_latex(q_text),
                'options': {k: clean_latex(v) for k, v in options.items()},
                'correct': correct_letter
            }
            questions.append(q)

    return questions


def extract_anpec_tf(filepath, cap_id):
    """Extract True/False items from ANPEC section."""
    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()

    # Find ANPEC section
    match = re.search(r'## 🏆 Vem, ANPEC!(.*?)(?=\n## |\Z)', content, re.DOTALL)
    if not match:
        return []

    section = match.group(1)
    items = []

    # Find each question block
    q_pattern = re.compile(
        r'\?\?\? question "(ANPEC[^"]*)"(.*?)(?=\?\?\? question|\?\?\? pesquisa|\n## |\Z)',
        re.DOTALL
    )

    for q_match in q_pattern.finditer(section):
        q_title = q_match.group(1)
        q_content = q_match.group(2)

        # Extract answer key (V/F pattern)
        # Look for patterns like "V-F-V-F-V" or "Respostas: VFVFV" or "01011"
        answer_key = None
        gabarito_match = re.search(
            r'Respostas?:\s*([VF01][\s\-–]*[VF01][\s\-–]*[VF01][\s\-–]*[VF01][\s\-–]*[VF01])',
            q_content
        )
        if gabarito_match:
            raw = gabarito_match.group(1)
            raw = re.sub(r'[\s\-–]', '', raw)
            answer_key = raw.replace('0', 'F').replace('1', 'V')

        if not answer_key:
            # Try pattern like "**Respostas: V-V-F-V-V**" or "F-F-V-F-V"
            gabarito_match2 = re.search(r'[VF]-[VF]-[VF]-[VF]-[VF]', q_content)
            if gabarito_match2:
                answer_key = gabarito_match2.group(0).replace('-', '')

        if not answer_key:
            # Try "Gabarito oficial: V-F-F-V-F"
            gabarito_match3 = re.search(r'Gabarito[^:]*:\s*([VF]-[VF]-[VF]-[VF]-[VF])', q_content)
            if gabarito_match3:
                answer_key = gabarito_match3.group(1).replace('-', '')

        if not answer_key or len(answer_key) != 5:
            continue

        # Extract individual items
        # Pattern: **(0)** text or | 0 | text |
        item_patterns = [
            re.compile(r'\*\*\((\d)\)\*\*\s*(.+?)(?=\*\*\(\d\)\*\*|\?\?\? success|\Z)', re.DOTALL),
            re.compile(r'\|\s*(\d)\s*\|\s*(.+?)\s*\|', re.MULTILINE),
        ]

        found_items = {}
        for pat in item_patterns:
            for m in pat.finditer(q_content):
                item_num = int(m.group(1))
                item_text = m.group(2).strip()
                # Clean up table formatting
                item_text = re.sub(r'\s*\|.*$', '', item_text)
                if item_num in range(5) and len(item_text) > 10:
                    found_items[item_num] = item_text

        for item_num in range(5):
            if item_num in found_items:
                is_true = answer_key[item_num] == 'V'
                items.append({
                    'cap': cap_id,
                    'q_title': clean_latex(q_title),
                    'item_num': item_num,
                    'text': clean_latex(found_items[item_num]),
                    'answer': is_true
                })

    return items


def format_mc_blackboard(question):
    """Format a MC question for Blackboard Ultra tab-delimited import."""
    parts = ["MC", question['text']]
    for letter in ['a', 'b', 'c', 'd']:
        parts.append(question['options'][letter])
        parts.append("correct" if letter == question['correct'] else "incorrect")
    return '\t'.join(parts)


def format_tf_blackboard(item):
    """Format a T/F item for Blackboard Ultra tab-delimited import."""
    return '\t'.join([
        "TF",
        item['text'],
        "true" if item['answer'] else "false"
    ])


def main():
    all_mc = []
    all_tf = []
    stats = {'mc_total': 0, 'tf_total': 0, 'caps_mc': 0, 'caps_tf': 0}

    for cap in CHAPTERS:
        filepath = os.path.join(BASE, f"cap{cap}", "index.md")
        if not os.path.exists(filepath):
            continue

        cap_name = CHAPTER_NAMES.get(cap, f"Capítulo {cap}")

        # Extract MC questions
        mc_questions = extract_quiz_mc(filepath, cap)
        if mc_questions:
            pool_file = os.path.join(OUT, f"pool_cap{cap}_quiz.txt")
            with open(pool_file, 'w', encoding='utf-8') as f:
                for q in mc_questions:
                    f.write(format_mc_blackboard(q) + '\n')
            all_mc.extend(mc_questions)
            stats['caps_mc'] += 1
            print(f"  Cap {cap}: {len(mc_questions)} MC questions")

        # Extract ANPEC T/F items
        tf_items = extract_anpec_tf(filepath, cap)
        if tf_items:
            pool_file = os.path.join(OUT, f"pool_cap{cap}_anpec.txt")
            with open(pool_file, 'w', encoding='utf-8') as f:
                for item in tf_items:
                    f.write(format_tf_blackboard(item) + '\n')
            all_tf.extend(tf_items)
            stats['caps_tf'] += 1
            print(f"  Cap {cap}: {len(tf_items)} V/F items")

    # Consolidated files
    with open(os.path.join(OUT, "all_quiz_mc.txt"), 'w', encoding='utf-8') as f:
        for q in all_mc:
            f.write(format_mc_blackboard(q) + '\n')

    with open(os.path.join(OUT, "all_anpec_tf.txt"), 'w', encoding='utf-8') as f:
        for item in all_tf:
            f.write(format_tf_blackboard(item) + '\n')

    stats['mc_total'] = len(all_mc)
    stats['tf_total'] = len(all_tf)

    print(f"\n=== RESUMO ===")
    print(f"MC (Revisão Rápida): {stats['mc_total']} questões de {stats['caps_mc']} capítulos")
    print(f"V/F (ANPEC): {stats['tf_total']} itens de {stats['caps_tf']} capítulos")
    print(f"Total: {stats['mc_total'] + stats['tf_total']} questões")
    print(f"Arquivos em: {OUT}")

    return stats


if __name__ == '__main__':
    main()

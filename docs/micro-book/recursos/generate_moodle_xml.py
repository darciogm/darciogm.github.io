#!/usr/bin/env python3
"""Extract quiz questions from micro-book chapters and generate Moodle XML."""

import re
import os
import html
from pathlib import Path

BASE = Path(__file__).resolve().parent.parent

# Chapters in order (cap09 overview has no quiz)
CHAPTERS = [
    "cap01", "cap02", "cap03", "cap04", "cap05", "cap06", "cap07", "cap08",
    "cap09a", "cap09b", "cap09c", "cap09d",
    "cap10", "cap11", "cap12", "cap13", "cap14", "cap15", "cap16",
    "cap17", "cap18", "cap19", "cap20", "cap21", "cap22",
]

# Map chapter folder to a clean category label
def chapter_label(ch):
    return ch.replace("cap0", "Cap0").replace("cap", "Cap")


def extract_questions(chapter):
    """Extract 5 quiz questions from a chapter's index.md."""
    filepath = BASE / chapter / "index.md"
    text = filepath.read_text(encoding="utf-8")

    # Find the Revisão Rápida section
    match = re.search(r"## .*Revisão Rápida", text)
    if not match:
        print(f"WARNING: No 'Revisão Rápida' found in {chapter}")
        return []

    section = text[match.end():]
    # Cut at next ## heading
    next_section = re.search(r"\n## ", section)
    if next_section:
        section = section[:next_section.start()]

    # Parse questions
    # Pattern: ??? question "N. Question text"
    #     - (a) ...
    #     - (b) ...
    #     ??? success "Resposta"
    #         **(X)** Explanation

    questions = []
    q_pattern = re.compile(
        r'\?\?\? question "(\d+)\.\s+(.*?)"\s*\n(.*?)(?=\n\?\?\? question |\Z)',
        re.DOTALL
    )

    for q_match in q_pattern.finditer(section):
        q_num = q_match.group(1)
        q_text = q_match.group(2).strip()
        q_body = q_match.group(3)

        # Extract options: lines starting with "    - (X) ..."
        options = re.findall(r'^\s*- \(([a-e])\)\s+(.+)$', q_body, re.MULTILINE)

        # Extract correct answer letter
        answer_match = re.search(r'\*\*\(([a-e])\)\*\*\s*(.*?)(?:\n\n|\Z)', q_body, re.DOTALL)
        if not answer_match:
            print(f"WARNING: No answer found for Q{q_num} in {chapter}")
            continue

        correct_letter = answer_match.group(1)
        explanation = answer_match.group(2).strip()
        # Clean up explanation: remove newlines and extra whitespace
        explanation = re.sub(r'\s+', ' ', explanation)

        questions.append({
            "num": q_num,
            "text": q_text,
            "options": options,
            "correct": correct_letter,
            "explanation": explanation,
        })

    return questions


def escape_xml(s):
    """Escape special chars for XML CDATA content (minimal)."""
    return s


def build_xml():
    xml_parts = ['<?xml version="1.0" encoding="UTF-8"?>\n<quiz>\n']
    total = 0

    for chapter in CHAPTERS:
        label = chapter_label(chapter)
        questions = extract_questions(chapter)

        if not questions:
            print(f"WARNING: No questions for {chapter}")
            continue

        # Category header
        xml_parts.append(f'  <question type="category">\n')
        xml_parts.append(f'    <category><text>$course$/Microeconomia/{label}</text></category>\n')
        xml_parts.append(f'  </question>\n')

        for q in questions:
            total += 1
            qname = f"{label}-Q{q['num']}"

            xml_parts.append(f'  <question type="multichoice">\n')
            xml_parts.append(f'    <name><text>{html.escape(qname)}</text></name>\n')
            xml_parts.append(f'    <questiontext format="html">\n')
            xml_parts.append(f'      <text><![CDATA[<p>{html.escape(q["text"])}</p>]]></text>\n')
            xml_parts.append(f'    </questiontext>\n')
            xml_parts.append(f'    <defaultgrade>1</defaultgrade>\n')
            xml_parts.append(f'    <penalty>0.3333333</penalty>\n')
            xml_parts.append(f'    <single>true</single>\n')
            xml_parts.append(f'    <shuffleanswers>true</shuffleanswers>\n')

            for letter, opt_text in q["options"]:
                fraction = "100" if letter == q["correct"] else "0"
                xml_parts.append(f'    <answer fraction="{fraction}" format="html">\n')
                xml_parts.append(f'      <text><![CDATA[<p>{html.escape(opt_text)}</p>]]></text>\n')
                if letter == q["correct"]:
                    xml_parts.append(f'      <feedback format="html"><text><![CDATA[<p>{html.escape(q["explanation"])}</p>]]></text></feedback>\n')
                xml_parts.append(f'    </answer>\n')

            xml_parts.append(f'  </question>\n')

    xml_parts.append('</quiz>\n')
    print(f"Total questions exported: {total}")
    return "".join(xml_parts)


if __name__ == "__main__":
    xml_content = build_xml()
    output = Path(__file__).resolve().parent / "quizzes-moodle.xml"
    output.write_text(xml_content, encoding="utf-8")
    print(f"Written to: {output}")
    print(f"File size: {output.stat().st_size:,} bytes")

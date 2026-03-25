#!/bin/bash
# =============================================================================
# gerar-pdf.sh — Gera PDF do livro de Microeconomia
# Execute na raiz do diretório docs/micro-book/
# =============================================================================

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BOOK_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
OUTPUT="/tmp/micro_completo.md"

echo "=== Gerador de PDF — Microeconomia ==="
echo "Diretório do livro: $BOOK_DIR"
echo ""

# Lista ordenada de capítulos
CHAPTERS=(
    "prefacio.md"
    "cap01/index.md"
    "cap02/index.md"
    "cap03/index.md"
    "cap04/index.md"
    "cap05/index.md"
    "cap06/index.md"
    "cap07/index.md"
    "cap08/index.md"
    "cap09/index.md"
    "cap09a/index.md"
    "cap09b/index.md"
    "cap09c/index.md"
    "cap09d/index.md"
    "cap10/index.md"
    "cap11/index.md"
    "cap12/index.md"
    "cap13/index.md"
    "cap14/index.md"
    "cap15/index.md"
    "cap16/index.md"
    "cap17/index.md"
    "cap18/index.md"
    "cap19/index.md"
    "cap20/index.md"
    "cap21/index.md"
    "cap22/index.md"
)

# Concatenar capítulos
echo "Concatenando capítulos..."
> "$OUTPUT"

count=0
for chapter in "${CHAPTERS[@]}"; do
    filepath="$BOOK_DIR/$chapter"
    if [ -f "$filepath" ]; then
        if [ $count -gt 0 ]; then
            echo -e "\n\n---\n\n" >> "$OUTPUT"
        fi
        cat "$filepath" >> "$OUTPUT"
        count=$((count + 1))
        echo "  ✓ $chapter"
    else
        echo "  ✗ $chapter (não encontrado, pulando)"
    fi
done

echo ""
echo "Capítulos concatenados: $count"
echo "Arquivo gerado: $OUTPUT"
echo ""

# Verificar se Pandoc está instalado
if command -v pandoc &> /dev/null; then
    echo "Pandoc encontrado. Para gerar o PDF, execute:"
    echo ""
    echo "  pandoc $OUTPUT -o microeconomia.pdf \\"
    echo "    --pdf-engine=xelatex \\"
    echo "    -V geometry:margin=2.5cm \\"
    echo "    -V lang=pt-BR \\"
    echo "    -V fontsize=11pt \\"
    echo "    --toc \\"
    echo "    --toc-depth=2"
else
    echo "Pandoc não encontrado. Instale com:"
    echo "  Ubuntu/Debian: sudo apt install pandoc texlive-xetex texlive-lang-portuguese"
    echo "  macOS:         brew install pandoc mactex"
fi

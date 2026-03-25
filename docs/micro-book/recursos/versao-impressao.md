# Versão para Impressão

Este livro foi projetado para leitura digital interativa, mas você pode gerar uma versão em PDF para impressão ou leitura offline.

## Como gerar o PDF

### Opção 1: Impressão pelo navegador (mais simples)

1. Navegue até o capítulo desejado
2. Use ++ctrl+p++ (ou ++cmd+p++ no Mac)
3. Selecione **"Salvar como PDF"** como destino
4. Ajuste as margens e o layout conforme necessário
5. Clique em **Salvar**

!!! tip "Dica"
    Os gráficos interativos serão capturados como imagens estáticas. Para melhor resultado, certifique-se de que os gráficos estejam carregados antes de imprimir.

### Opção 2: Compilação completa com mkdocs-print-site

Se você clonou o repositório do livro, pode usar o plugin `mkdocs-print-site` para gerar uma página única com todo o conteúdo:

```bash
pip install mkdocs-print-site-plugin
```

Adicione ao `mkdocs.yml`:

```yaml
plugins:
  - print-site
```

Em seguida:

```bash
mkdocs serve
# Acesse /print_page/ para ver todo o livro em uma página
# Use Ctrl+P para salvar como PDF
```

### Opção 3: Pandoc (para LaTeX/PDF de alta qualidade)

O [Pandoc](https://pandoc.org/) permite converter Markdown diretamente para PDF via LaTeX, gerando um resultado com tipografia profissional.

**Pré-requisitos:**

```bash
# Ubuntu/Debian
sudo apt install pandoc texlive-xetex texlive-lang-portuguese

# macOS (com Homebrew)
brew install pandoc mactex
```

**Geração do PDF:**

```bash
# Use o script auxiliar para concatenar todos os capítulos
bash gerar-pdf.sh

# Em seguida, converta com Pandoc
pandoc /tmp/micro_completo.md -o microeconomia.pdf \
  --pdf-engine=xelatex \
  -V geometry:margin=2.5cm \
  -V lang=pt-BR \
  -V fontsize=11pt \
  --toc \
  --toc-depth=2
```

!!! warning "Atenção"
    A conversão via Pandoc não renderiza gráficos interativos (Plotly, iframes). Esses elementos aparecerão como links ou serão omitidos. Para incluir gráficos, exporte-os manualmente como imagens PNG e referencie no Markdown.

## Estatísticas do livro

| Métrica | Valor |
|---|---|
| Capítulos | 25 (incluindo subcapítulos do Cap. 9) |
| Palavras estimadas | ~410.000 |
| Páginas estimadas (A4) | ~820 |

## Script auxiliar

O arquivo [`gerar-pdf.sh`](gerar-pdf.sh) concatena todos os capítulos em um único arquivo Markdown pronto para conversão. Baixe-o e execute na raiz do diretório `docs/micro-book/`.

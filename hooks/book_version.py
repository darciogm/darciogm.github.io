import subprocess
from datetime import datetime

BOOK_AUTHOR = "Darcio Genicolo-Martins"
BOOK_TITLE = "# Microeconomia: Do Zero ao Equilíbrio (e Além)"


def on_page_markdown(markdown, page, config, files):
    if page.file.src_path != "micro-book/index.md":
        return markdown

    book_version_date = None
    try:
        result = subprocess.run(
            ["git", "log", "-1", "--format=%ct", "--", "docs/micro-book/"],
            capture_output=True,
            text=True,
            check=True,
        )
        timestamp = result.stdout.strip()
        if timestamp:
            dt = datetime.fromtimestamp(int(timestamp))
            book_version_date = dt.strftime("%d/%m/%Y")
    except Exception:
        pass

    meta_parts = [f'<span class="book-author">{BOOK_AUTHOR}</span>']
    if book_version_date:
        meta_parts.append(
            f'<span class="book-version">Versão do livro: {book_version_date}</span>'
        )

    meta_html = '\n<div class="book-meta">\n  ' + "\n  ".join(meta_parts) + "\n</div>\n"

    return markdown.replace(BOOK_TITLE, BOOK_TITLE + "\n" + meta_html, 1)

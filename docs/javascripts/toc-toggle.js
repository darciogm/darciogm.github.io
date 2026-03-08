/* TOC colapsável no sidebar — Micro Book
   Clique no capítulo ativo abre/fecha as seções (TOC) */
(function () {
  "use strict";

  function initTocToggle() {
    /* Encontrar o link <a> do capítulo ativo no sidebar */
    var tocNav = document.querySelector(".md-nav--secondary");
    if (!tocNav) return;

    var parent = tocNav.parentElement;
    if (!parent) return;

    var link = parent.querySelector(
      ":scope > a.md-nav__link--active"
    );
    if (!link) return;

    /* Começar colapsado */
    tocNav.classList.add("toc--collapsed");

    /* Toggle ao clicar */
    link.addEventListener("click", function (e) {
      e.preventDefault();
      tocNav.classList.toggle("toc--collapsed");
    });
  }

  /* Inicializar após DOM pronto */
  if (document.readyState === "loading") {
    document.addEventListener("DOMContentLoaded", initTocToggle);
  } else {
    initTocToggle();
  }
})();

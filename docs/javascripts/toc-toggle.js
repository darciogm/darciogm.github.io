/* TOC colapsavel no sidebar — todas as paginas
   Clique na pagina ativa abre/fecha as secoes (TOC)
   Compativel com navigation.instant (SPA) */
(function () {
  "use strict";

  function initTocToggle() {
    /* Encontrar o nav secundario (TOC integrado no sidebar) */
    var tocNav = document.querySelector(".md-nav--secondary");
    if (!tocNav) return;

    var parent = tocNav.parentElement;
    if (!parent) return;

    var link = parent.querySelector(
      ":scope > a.md-nav__link--active"
    );
    if (!link) return;

    /* Evitar re-bind se ja foi configurado neste elemento */
    if (link.dataset.tocBound) return;
    link.dataset.tocBound = "1";

    /* Comecar colapsado */
    tocNav.classList.add("toc--collapsed");

    /* Toggle ao clicar */
    link.addEventListener("click", function (e) {
      e.preventDefault();
      tocNav.classList.toggle("toc--collapsed");
    });
  }

  /* Inicializar na carga completa */
  if (document.readyState === "loading") {
    document.addEventListener("DOMContentLoaded", initTocToggle);
  } else {
    initTocToggle();
  }

  /* Re-inicializar apos navegacao instant (SPA) */
  if (typeof document$ !== "undefined") {
    document$.subscribe(function () {
      initTocToggle();
    });
  }
})();

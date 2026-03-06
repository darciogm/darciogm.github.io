// Auto-resize graph iframes to fit content without scrollbars
(function() {
  function resizeIframe(iframe) {
    try {
      var doc = iframe.contentDocument || iframe.contentWindow.document;
      var height = Math.max(
        doc.body.scrollHeight,
        doc.body.offsetHeight,
        doc.documentElement.scrollHeight,
        doc.documentElement.offsetHeight
      );
      if (height > 100) {
        iframe.style.height = (height + 16) + 'px';
      }
    } catch(e) { /* cross-origin fallback: keep original height */ }
  }

  function initResize() {
    var iframes = document.querySelectorAll('iframe[src*="graficos"]');
    iframes.forEach(function(iframe) {
      iframe.setAttribute('scrolling', 'no');
      iframe.addEventListener('load', function() {
        resizeIframe(iframe);
        // Re-resize after MathJax/JSXGraph async rendering completes
        setTimeout(function() { resizeIframe(iframe); }, 1500);
        setTimeout(function() { resizeIframe(iframe); }, 4000);
      });
      // If already loaded (cached)
      if (iframe.contentDocument && iframe.contentDocument.readyState === 'complete') {
        resizeIframe(iframe);
      }
    });
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', initResize);
  } else {
    initResize();
  }

  // MkDocs Material instant loading: re-init on navigation
  if (typeof document$ !== 'undefined') {
    document$.subscribe(initResize);
  }
})();

// Auto-resize graph iframes to fit content without scrollbars
(function() {
  function resizeIframe(iframe) {
    try {
      var doc = iframe.contentDocument || iframe.contentWindow.document;
      // Use the minimum reliable measure of actual content height
      var body = doc.body;
      var html = doc.documentElement;
      var height = Math.min(
        Math.max(body.scrollHeight, body.offsetHeight),
        Math.max(html.scrollHeight, html.offsetHeight)
      );
      // Fallback: if min gives something too small, use body.scrollHeight
      if (height < 100) {
        height = body.scrollHeight;
      }
      if (height > 100) {
        iframe.style.height = height + 'px';
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

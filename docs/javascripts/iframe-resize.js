// iframe-resize.js — v4: dual strategy (contentDocument + postMessage)
(function() {
  function measureHeight(doc) {
    // Strategy 1: getBoundingClientRect of body children (most accurate)
    var body = doc.body;
    if (!body) return 0;
    var children = body.children;
    var maxBottom = 0;
    for (var i = 0; i < children.length; i++) {
      var rect = children[i].getBoundingClientRect();
      if (rect.height > 0) {
        var bottom = rect.top + rect.height;
        if (bottom > maxBottom) maxBottom = bottom;
      }
    }
    if (maxBottom > 50) return Math.ceil(maxBottom) + 10;
    // Strategy 2: scrollHeight fallback
    return body.scrollHeight;
  }

  function resizeIframe(iframe) {
    try {
      var doc = iframe.contentDocument || iframe.contentWindow.document;
      if (!doc || !doc.body) return;
      var height = measureHeight(doc);
      if (height > 50) {
        iframe.style.height = height + 'px';
      }
    } catch(e) { /* cross-origin — rely on postMessage */ }
  }

  function setupIframe(iframe) {
    // Resize on load
    iframe.addEventListener('load', function() {
      resizeIframe(iframe);
      setTimeout(function() { resizeIframe(iframe); }, 800);
      setTimeout(function() { resizeIframe(iframe); }, 2500);
      setTimeout(function() { resizeIframe(iframe); }, 5000);
    });
    // If already loaded
    try {
      if (iframe.contentDocument && iframe.contentDocument.readyState === 'complete') {
        resizeIframe(iframe);
        setTimeout(function() { resizeIframe(iframe); }, 800);
      }
    } catch(e) {}
  }

  // Setup existing iframes
  function initAll() {
    document.querySelectorAll('iframe').forEach(setupIframe);
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', initAll);
  } else {
    initAll();
  }

  // MkDocs Material instant loading
  if (typeof document$ !== 'undefined') {
    document$.subscribe(function() {
      setTimeout(initAll, 100);
    });
  }

  // MutationObserver for dynamically added iframes
  new MutationObserver(function(mutations) {
    mutations.forEach(function(m) {
      m.addedNodes.forEach(function(n) {
        if (n.tagName === 'IFRAME') setupIframe(n);
        if (n.querySelectorAll) {
          n.querySelectorAll('iframe').forEach(setupIframe);
        }
      });
    });
  }).observe(document.body, { childList: true, subtree: true });

  // Also listen for postMessage from child iframes (backup)
  window.addEventListener('message', function(event) {
    if (event.data && event.data.type === 'iframeResize' && event.data.height > 0) {
      var iframes = document.querySelectorAll('iframe');
      for (var i = 0; i < iframes.length; i++) {
        try {
          if (iframes[i].contentWindow === event.source) {
            iframes[i].style.height = event.data.height + 'px';
            break;
          }
        } catch(ex) {}
      }
    }
  });
})();

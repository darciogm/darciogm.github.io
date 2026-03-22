// Auto-resize graph iframes via postMessage from child HTMLs
(function() {
  // Listen for height messages from graph iframes
  window.addEventListener('message', function(e) {
    if (e.data && e.data.type === 'iframeResize' && e.data.height > 0) {
      var iframes = document.querySelectorAll('iframe[src*="graficos"]');
      iframes.forEach(function(iframe) {
        try {
          if (iframe.contentWindow === e.source) {
            iframe.style.height = e.data.height + 'px';
          }
        } catch(ex) {}
      });
    }
  });
})();

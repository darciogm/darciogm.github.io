// iframe-resize.js — v3: resize via postMessage from child graphs
(function() {
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

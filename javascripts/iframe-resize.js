(function() {
    function resize(iframe) {
        try {
            var h = iframe.contentDocument.body.scrollHeight;
            if (h > 50) iframe.style.height = h + 'px';
        } catch(e) {}
    }

    function setup(iframe) {
        iframe.addEventListener('load', function() {
            resize(iframe);
            setTimeout(function() { resize(iframe); }, 500);
            setTimeout(function() { resize(iframe); }, 2000);
            setTimeout(function() { resize(iframe); }, 4000);
        });
        try {
            if (iframe.contentDocument && iframe.contentDocument.readyState === 'complete') {
                resize(iframe);
            }
        } catch(e) {}
    }

    document.querySelectorAll('iframe').forEach(setup);

    new MutationObserver(function(muts) {
        muts.forEach(function(m) {
            m.addedNodes.forEach(function(n) {
                if (n.tagName === 'IFRAME') setup(n);
                if (n.querySelectorAll) n.querySelectorAll('iframe').forEach(setup);
            });
        });
    }).observe(document.body, { childList: true, subtree: true });

    // Re-scan iframes after instant navigation (SPA)
    if (typeof document$ !== "undefined") {
        document$.subscribe(function() {
            document.querySelectorAll('iframe').forEach(setup);
        });
    }

    // Dynamic resize via postMessage (WebR iframes after R code execution)
    window.addEventListener('message', function(e) {
        if (e.data && e.data.iframeHeight && e.data.src) {
            document.querySelectorAll('iframe').forEach(function(iframe) {
                var iframeSrc = iframe.getAttribute('src') || '';
                var filename = iframeSrc.split('/').pop().replace('.html', '');
                if (filename && e.data.src.indexOf(filename) !== -1) {
                    iframe.style.height = (e.data.iframeHeight + 40) + 'px';
                }
            });
        }
    });
})();

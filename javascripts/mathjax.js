window.MathJax = {
  loader: {
    load: ['[tex]/boldsymbol'],
    source: {
      '[tex]/boldsymbol': 'https://cdn.jsdelivr.net/npm/mathjax@3/es5/input/tex/extensions/boldsymbol.js'
    }
  },
  tex: {
    inlineMath: [["\\(", "\\)"]],
    displayMath: [["\\[", "\\]"]],
    processEscapes: true,
    processEnvironments: true,
    tags: 'ams',
    tagSide: 'right',
    tagIndent: '0.8em',
    packages: {'[+]': ['boldsymbol', 'ams']}
  },
  options: {
    ignoreHtmlClass: ".*|",
    processHtmlClass: "arithmatex"
  }
};

document$.subscribe(() => {
  MathJax.startup.output.clearCache()
  MathJax.typesetClear()
  MathJax.texReset()
  MathJax.typesetPromise()
})

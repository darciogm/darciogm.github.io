PAPER_NAVS = {
    "bitter-pills": [
        {"title": "Summary",           "url": "/research/bitter-pills/"},
        {"title": "Paper",             "url": "/research/bitter-pills/paper/"},
        {"title": "Results",           "url": "/research/bitter-pills/results/"},
        {"title": "Maps",              "url": "/research/bitter-pills/maps/"},
        {"title": "Admin vs Ordinary", "url": "/research/bitter-pills/results_adm_vs_ord/"},
        {"title": "Replication",       "url": "/research/bitter-pills/replication/"},
        {"title": "Authors",           "url": "/research/bitter-pills/authors/"},
        {"title": "Autores",           "url": "/research/bitter-pills/autores/"},
        {"title": "Changelog",         "url": "/research/bitter-pills/changelog/"},
    ],
    "sme-public": [
        {"title": "Summary",     "url": "/research/sme-public/"},
        {"title": "Paper",       "url": "/research/sme-public/paper/"},
        {"title": "Results",     "url": "/research/sme-public/results/"},
        {"title": "Robustness",  "url": "/research/sme-public/robustness/"},
        {"title": "Extensions",  "url": "/research/sme-public/extensions/"},
        {"title": "Advanced",    "url": "/research/sme-public/advanced/"},
        {"title": "Replication", "url": "/research/sme-public/replication/"},
        {"title": "Autores",     "url": "/research/sme-public/autores/"},
        {"title": "Changelog",   "url": "/research/sme-public/changelog/"},
    ],
    "frequent-losers": [
        {"title": "Summary",     "url": "/research/frequent-losers/"},
        {"title": "Paper",       "url": "/research/frequent-losers/paper/"},
        {"title": "Results",     "url": "/research/frequent-losers/results/"},
        {"title": "Robustness",  "url": "/research/frequent-losers/robustness/"},
        {"title": "Extensions",  "url": "/research/frequent-losers/extensions/"},
        {"title": "Replication", "url": "/research/frequent-losers/replication/"},
        {"title": "Autores",     "url": "/research/frequent-losers/autores/"},
        {"title": "Mind Map",    "url": "/research/frequent-losers/mindmap/"},
        {"title": "Changelog",   "url": "/research/frequent-losers/changelog/"},
    ],
}


def on_page_context(context, page, config, nav):
    paper = page.meta.get("paper")
    if paper and paper in PAPER_NAVS:
        context["paper_nav"] = PAPER_NAVS[paper]
        context["paper_current_url"] = "/" + page.url
    return context

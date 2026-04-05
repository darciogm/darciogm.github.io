PAPER_NAVS = {
    "bitter-pills": [
        {"title": "Summary",           "url": "/research/bitter-pills/"},
        {"title": "Paper",             "url": "/research/bitter-pills/paper/"},
        {"title": "Video",             "url": "/research/bitter-pills/video/"},
        {"title": "Results",           "url": "/research/bitter-pills/results/"},
        {"title": "Maps",              "url": "/research/bitter-pills/maps/"},
        {"title": "Admin vs Ordinary", "url": "/research/bitter-pills/results_adm_vs_ord/"},
        {"title": "Replication",       "url": "/research/bitter-pills/replication/"},
        {"title": "Authors",           "url": "/research/bitter-pills/authors/"},
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
        {"title": "Authors",     "url": "/research/sme-public/authors/"},
        {"title": "Changelog",   "url": "/research/sme-public/changelog/"},
    ],
    "frequent-losers": [
        {"title": "Summary",     "url": "/research/frequent-losers/"},
        {"title": "Paper",       "url": "/research/frequent-losers/paper/"},
        {"title": "Video",       "url": "/research/frequent-losers/video/"},
        {"title": "Results",     "url": "/research/frequent-losers/results/"},
        {"title": "Robustness",  "url": "/research/frequent-losers/robustness/"},
        {"title": "Extensions",  "url": "/research/frequent-losers/extensions/"},
        {"title": "Replication", "url": "/research/frequent-losers/replication/"},
        {"title": "Authors",     "url": "/research/frequent-losers/authors/"},
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

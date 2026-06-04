PAPER_NAVS = {
    "bitter-pills": [
        {"title": "Summary",     "url": "/research/bitter-pills/"},
        {"title": "Agenda",      "url": "/research/bitter-pills/papers/"},
        {"title": "Paper",       "url": "/research/bitter-pills/paper/"},
        {"title": "Video",       "url": "/research/bitter-pills/video/"},
        {"title": "Hypotheses",  "url": "/research/bitter-pills/hypotheses/"},
        {"title": "Analyses",    "url": "/research/bitter-pills/analyses/"},
        {"title": "Findings",    "url": "/research/bitter-pills/findings/"},
        {"title": "Results",     "url": "/research/bitter-pills/results/"},
        {"title": "Robustness",  "url": "/research/bitter-pills/robustness/"},
        {"title": "Extensions",  "url": "/research/bitter-pills/extensions/"},
        {"title": "Advanced",    "url": "/research/bitter-pills/advanced/"},
        {"title": "Replication", "url": "/research/bitter-pills/replication/"},
        {"title": "Authors",     "url": "/research/bitter-pills/autores/"},
        {"title": "Mind Map",    "url": "/research/bitter-pills/mindmap/"},
        {"title": "Changelog",   "url": "/research/bitter-pills/changelog/"},
    ],
    "sme-public": [
        {"title": "Summary",     "url": "/research/sme-public/"},
        {"title": "Agenda",      "url": "/research/sme-public/papers/"},
        {"title": "Paper",       "url": "/research/sme-public/paper/"},
        {"title": "Video",       "url": "/research/sme-public/video/"},
        {"title": "Hypotheses",  "url": "/research/sme-public/hypotheses/"},
        {"title": "Analyses",    "url": "/research/sme-public/analyses/"},
        {"title": "Findings",    "url": "/research/sme-public/findings/"},
        {"title": "Results",     "url": "/research/sme-public/results/"},
        {"title": "Robustness",  "url": "/research/sme-public/robustness/"},
        {"title": "Extensions",  "url": "/research/sme-public/extensions/"},
        {"title": "Advanced",    "url": "/research/sme-public/advanced/"},
        {"title": "Replication", "url": "/research/sme-public/replication/"},
        {"title": "Authors",     "url": "/research/sme-public/authors/"},
        {"title": "Mind Map",    "url": "/research/sme-public/mindmap/"},
        {"title": "Changelog",   "url": "/research/sme-public/changelog/"},
    ],
    "frequent-losers": [
        {"title": "Summary",     "url": "/research/frequent-losers/"},
        {"title": "Agenda",      "url": "/research/frequent-losers/papers/"},
        {"title": "Paper",       "url": "/research/frequent-losers/paper/"},
        {"title": "Video",       "url": "/research/frequent-losers/video/"},
        {"title": "Hypotheses",  "url": "/research/frequent-losers/hypotheses/"},
        {"title": "Analyses",    "url": "/research/frequent-losers/analyses/"},
        {"title": "Findings",    "url": "/research/frequent-losers/findings/"},
        {"title": "Results",     "url": "/research/frequent-losers/results/"},
        {"title": "Robustness",  "url": "/research/frequent-losers/robustness/"},
        {"title": "Extensions",  "url": "/research/frequent-losers/extensions/"},
        {"title": "Advanced",    "url": "/research/frequent-losers/advanced/"},
        {"title": "Replication", "url": "/research/frequent-losers/replication/"},
        {"title": "Authors",     "url": "/research/frequent-losers/authors/"},
        {"title": "DAG",         "url": "/research/frequent-losers/dag/"},
        {"title": "Changelog",   "url": "/research/frequent-losers/changelog/"},
    ],
    "beneath-surface": [
        {"title": "Summary",     "url": "/research/beneath-surface/"},
        {"title": "Paper",       "url": "/research/beneath-surface/paper/"},
        {"title": "Results",     "url": "/research/beneath-surface/results/"},
        {"title": "Robustness",  "url": "/research/beneath-surface/robustness/"},
        {"title": "Replication", "url": "/research/beneath-surface/replication/"},
        {"title": "Authors",     "url": "/research/beneath-surface/authors/"},
        {"title": "Changelog",   "url": "/research/beneath-surface/changelog/"},
    ],
}


def on_page_context(context, page, config, nav):
    paper = page.meta.get("paper")
    if paper and paper in PAPER_NAVS:
        context["paper_nav"] = PAPER_NAVS[paper]
        context["paper_current_url"] = "/" + page.url
    return context

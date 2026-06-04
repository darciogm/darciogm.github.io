#!/usr/bin/env python3
"""Gera corpo-questoes.tex a partir de conteudo-blocos.json (SSOT do conteúdo).

Uso: python3 gerar-corpo.py && latexmk -pdf simulado-af-3.tex simulado-af-3-solucao.tex
Estrutura: 4 blocos × (2 ME 3pts + 2 V/F 2pts + 1 aberta 15pts) = 100 pts.
"""
import json

data = json.load(open("conteudo-blocos.json"))
out = []
W = out.append

W("% ============================================================")
W("% Corpo das questões — GERADO por gerar-corpo.py a partir de")
W("% conteudo-blocos.json (SSOT). Não editar à mão: editar o JSON")
W("% e regenerar. Sincronia prova/solução garantida via \\ifsolucao")
W("% ============================================================")
W("")
W("\\ifsolucao\\else")
W("\\begin{center}")
W("\\renewcommand{\\arraystretch}{1.3}")
W("\\begin{tabular}{|l|l|c|c|}")
W("\\hline")
W("\\textbf{Bloco} & \\textbf{Conteúdo} & \\textbf{Aulas} & \\textbf{Pontos} \\\\ \\hline")
W("1 & Teoria do Consumidor & 1--3 & 25 \\\\ \\hline")
W("2 & Equilíbrio Geral & 4--6 & 25 \\\\ \\hline")
W("3 & Externalidades e Bens Públicos & 7 & 25 \\\\ \\hline")
W("4 & Assimetria Informacional e Sinalização & 8--9 & 25 \\\\ \\hline")
W("\\multicolumn{3}{|r|}{\\textbf{Total}} & \\textbf{100} \\\\ \\hline")
W("\\end{tabular}")
W("\\end{center}")
W("\\vspace{0.5em}")
W("\\fi")

LBL = ["a)", "b)", "c)", "d)"]
PTS_OBJ = [3, 3, 2, 2]

for b in data["blocos"]:
    n, c = b["n"], b["conteudo"]
    qobj, qab = 2*n - 1, 2*n
    W("")
    W("")  # sem clearpage: evita páginas-fantasma de caixa órfã
    W(f"\\section*{{Bloco {n} --- {b['titulo']} \\hfill \\normalsize (25 pontos)}}")
    W("")
    W(f"\\textbf{{Questão {qobj}.}} (10 pontos) \\textbf{{Itens objetivos.}} Nos itens \\textbf{{a)}} e \\textbf{{b)}}, assinale a \\emph{{única}} alternativa correta (3 pontos cada; não há penalização por erro). Nos itens \\textbf{{c)}} e \\textbf{{d)}}, responda \\textbf{{Verdadeiro ou Falso}} (2 pontos cada; vale a regra de anulação descrita na capa). Registre suas respostas no quadro-resposta ao final do bloco.")
    W("")
    for k, o in enumerate(c["objetivas"]):
        W(f"\\textbf{{{LBL[k]}}} ({PTS_OBJ[k]} pontos{', V ou F' if o['tipo']=='vf' else ''}) {o['enunciado_latex']}")
        W("")
        if o["tipo"] == "me":
            W("\\begin{enumerate}[label=\\Alph*., leftmargin=3.2em, itemsep=0.15em, topsep=0.2em]")
            for a in o["alternativas_latex"]:
                W(f"  \\item {a}")
            W("\\end{enumerate}")
        W(f"\\gabaritoitem{{{o['resposta']}}}")
        W("\\begin{solucao}")
        W(o["solucao_latex"])
        W("\\end{solucao}")
        W("")
    W(f"\\quadroresposta{{{n}}}")
    W("")
    ab = c["aberta"]
    W(f"\\textbf{{Questão {qab}.}} (15 pontos) {ab['contexto_latex']}")
    W("")
    for j, s in enumerate(ab["subitens"]):
        W(f"\\textbf{{{LBL[j]}}} ({int(s['pontos'])} pontos) {s['enunciado_latex']}")
        W("\\resolucaobox{7.2cm}")
        W("\\begin{solucao}")
        W(s["solucao_latex"])
        W("\\rubricalabel")
        W(s["rubrica_latex"])
        W("\\end{solucao}")
        W("")

open("corpo-questoes.tex", "w").write("\n".join(out))
print(f"corpo-questoes.tex: {len(out)} linhas")

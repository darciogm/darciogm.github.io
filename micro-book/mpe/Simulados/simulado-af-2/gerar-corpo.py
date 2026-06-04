#!/usr/bin/env python3
"""Gera corpo-questoes.tex do Simulado 2 a partir de conteudo-blocos.json (SSOT).

Uso: python3 gerar-corpo.py && latexmk -pdf simulado-af-2.tex simulado-af-2-solucao.tex
Estrutura: Blocos 1-2: 2 ME (3pts) + 2 V/F (2pts) + aberta 15 (5+5+5).
           Blocos 3-4: 2 ME (3pts) + 1 V/F (2pts) + aberta 17 (6+6+5).
Total: 14 objetivas + 4 abertas = 100 pts. Sem \\clearpage entre blocos
(limite de 12 páginas na versão prova).
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

for b in data["blocos"]:
    n, c = b["n"], b["conteudo"]
    objs = c["objetivas"]
    n_obj = len(objs)
    pts_obj = [3 if o["tipo"] == "me" else 2 for o in objs]
    total_obj = sum(pts_obj)
    qobj, qab = 2*n - 1, 2*n
    ab = c["aberta"]
    total_ab = int(sum(s["pontos"] for s in ab["subitens"]))

    if n_obj == 4:
        instr = ("Nos itens \\textbf{a)} e \\textbf{b)}, assinale a \\emph{única} alternativa "
                 "correta (3 pontos cada; não há penalização por erro). Nos itens \\textbf{c)} e "
                 "\\textbf{d)}, responda \\textbf{Verdadeiro ou Falso} (2 pontos cada; vale a regra "
                 "de anulação descrita na capa).")
    else:
        instr = ("Nos itens \\textbf{a)} e \\textbf{b)}, assinale a \\emph{única} alternativa "
                 "correta (3 pontos cada; não há penalização por erro). No item \\textbf{c)}, "
                 "responda \\textbf{Verdadeiro ou Falso} (2 pontos; vale a regra de anulação "
                 "descrita na capa).")

    W("")
    W(f"\\blocotitulo{{Bloco {n} --- {b['titulo']} \\hfill \\normalsize (25 pontos)}}")
    W("")
    W(f"\\textbf{{Questão {qobj}.}} ({total_obj} pontos) \\textbf{{Itens objetivos.}} {instr} "
      "Registre suas respostas no quadro-resposta ao final do bloco.")
    W("")
    for k, o in enumerate(objs):
        W(f"\\textbf{{{LBL[k]}}} ({pts_obj[k]} pontos{', V ou F' if o['tipo']=='vf' else ''}) {o['enunciado_latex']}")
        W("")
        if o["tipo"] == "me":
            W("\\begin{enumerate}[label=\\Alph*., leftmargin=3.2em, itemsep=0.05em, topsep=0.1em]")
            for a in o["alternativas_latex"]:
                W(f"  \\item {a}")
            W("\\end{enumerate}")
        W(f"\\gabaritoitem{{{o['resposta']}}}")
        W("\\begin{solucao}")
        W(o["solucao_latex"])
        W("\\end{solucao}")
        W("")

    # quadro-resposta inline (3 ou 4 itens)
    cols = "".join("|" for _ in range(n_obj))
    header = " & ".join(LBL[:n_obj])
    blanks = " & ".join("" for _ in range(n_obj))
    W("\\ifsolucao\\else")
    W("\\par\\vspace{0.5em}")
    W("\\begin{center}")
    W(f"\\textbf{{Quadro-resposta do Bloco {n} --- escreva a alternativa (A--E) ou V/F de cada item:}}\\\\[0.6em]")
    W("\\renewcommand{\\arraystretch}{1.45}")
    W(f"\\begin{{tabular}}{{|>{{\\centering\\arraybackslash}}p{{2.6cm}}{''.join(['|>{\\centering\\arraybackslash}p{1.4cm}']*n_obj)}|}}")
    W("  \\hline")
    W(f"  \\textbf{{Item}} & {header} \\\\ \\hline")
    W(f"  \\textbf{{Resposta}} & {blanks} \\\\ \\hline")
    W("\\end{tabular}")
    W("\\end{center}")
    W("{\\small\\itshape Atenção: apenas o quadro acima será considerado na correção dos itens objetivos deste bloco.}\\par\\vspace{0.6em}")
    W("\\fi")
    W("")
    W(f"\\textbf{{Questão {qab}.}} ({total_ab} pontos) {ab['contexto_latex']}")
    W("")
    for j, s in enumerate(ab["subitens"]):
        W(f"\\textbf{{{LBL[j]}}} ({int(s['pontos'])} pontos) {s['enunciado_latex']}")
        W("\\resolucaobox{5.5cm}")
        W("\\begin{solucao}")
        W(s["solucao_latex"])
        W("\\rubricalabel")
        W(s["rubrica_latex"])
        W("\\end{solucao}")
        W("")

open("corpo-questoes.tex", "w").write("\n".join(out))
print(f"corpo-questoes.tex: {len(out)} linhas")

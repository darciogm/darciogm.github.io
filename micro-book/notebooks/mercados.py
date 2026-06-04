"""
Microeconomia — Caderno 5: Mercados
Capítulos 13-16

Execute: python mercados.py
"""
import numpy as np
import matplotlib.pyplot as plt

plt.rcParams.update({
    "figure.figsize": (8, 6),
    "axes.grid": True,
    "grid.alpha": 0.3,
    "font.size": 12,
})

# %% [markdown]
# ## 1. Incidência Tributária e Elasticidades (Cap. 13)
# Quem paga o imposto depende das elasticidades de oferta e demanda.

# %%
# Demanda: Qd = a - b*P ; Oferta: Qs = c + d*P
a_d, b_d = 100, 2   # demanda
c_s, d_s = 10, 3    # oferta

# Equilíbrio sem imposto
P_eq = (a_d - c_s) / (b_d + d_s)
Q_eq = a_d - b_d * P_eq

# Com imposto t por unidade (pago pelo produtor)
t = 10  # imposto unitário
P_consumidor = (a_d * d_s + c_s * b_d + b_d * t) / (b_d + d_s) / d_s * d_s
# Mais simples: Pd = P_eq + t * d_s/(b_d+d_s), Ps = P_eq - t * b_d/(b_d+d_s)
Pd = P_eq + t * d_s / (b_d + d_s)  # preço que consumidor paga
Ps = P_eq - t * b_d / (b_d + d_s)  # preço que produtor recebe
Qt = a_d - b_d * Pd  # nova quantidade

# Parcelas do imposto
parcela_consumidor = Pd - P_eq
parcela_produtor = P_eq - Ps
dwl = 0.5 * t * (Q_eq - Qt)

print("=== Incidência Tributária ===")
print(f"  Equilíbrio sem imposto: P = {P_eq:.2f}, Q = {Q_eq:.2f}")
print(f"  Imposto: t = R${t} por unidade")
print(f"  Preço ao consumidor: Pd = {Pd:.2f}  (+{parcela_consumidor:.2f})")
print(f"  Preço ao produtor:   Ps = {Ps:.2f}  (−{parcela_produtor:.2f})")
print(f"  Nova quantidade: Q = {Qt:.2f}")
print(f"  Parcela do consumidor: {parcela_consumidor/t*100:.1f}%")
print(f"  Parcela do produtor:   {parcela_produtor/t*100:.1f}%")
print(f"  Peso morto (DWL): {dwl:.2f}")
print(f"\n  Regra: lado mais inelástico arca com maior parcela.")

# --- Gráfico ---
P_range = np.linspace(0, 30, 200)
Qd = a_d - b_d * P_range
Qs = c_s + d_s * P_range
Qs_tax = c_s + d_s * (P_range - t)  # oferta deslocada pelo imposto

fig, ax = plt.subplots()
ax.plot(Qd, P_range, "b-", linewidth=2, label="Demanda")
ax.plot(Qs, P_range, "r-", linewidth=2, label="Oferta")
ax.plot(Qs_tax, P_range, "r--", linewidth=2, label="Oferta + imposto")

# Área do DWL
ax.fill([Qt, Q_eq, Qt], [Pd, P_eq, Ps], alpha=0.3, color="yellow", label=f"DWL = {dwl:.1f}")

# Pontos
ax.plot(Q_eq, P_eq, "ko", markersize=8)
ax.plot(Qt, Pd, "bs", markersize=8)
ax.plot(Qt, Ps, "rs", markersize=8)

ax.set_xlabel("Quantidade"); ax.set_ylabel("Preço")
ax.set_title(f"Incidência de Imposto (t = R${t})")
ax.set_xlim(0, 110); ax.set_ylim(0, 30)
ax.legend(); plt.show()

# %% [markdown]
# ## 2. Caixa de Edgeworth — Equilíbrio Geral de Troca (Cap. 14)
# Dois consumidores, dois bens, dotações iniciais.

# %%
# Dotações
w1 = np.array([8, 2])   # agente A: 8 de bem 1, 2 de bem 2
w2 = np.array([2, 8])   # agente B: 2 de bem 1, 8 de bem 2
total = w1 + w2          # total na economia

# Preferências Cobb-Douglas: uA = x1^a * x2^(1-a)
a_A, a_B = 0.6, 0.4

# Curva de contrato: TMST_A = TMST_B
# Para CD: TMST = (a/(1-a)) * (x2/x1)
# Igualar: (a_A/(1-a_A)) * x2A/x1A = (a_B/(1-a_B)) * x2B/x1B
# com x1B = total[0]-x1A, x2B = total[1]-x2A

x1A_range = np.linspace(0.5, total[0] - 0.5, 200)

# Curva de contrato (pontos Pareto-eficientes)
# Condição: a_A*x2A/((1-a_A)*x1A) = a_B*(T2-x2A)/((1-a_B)*(T1-x1A))
# Resolvendo para x2A:
T1, T2 = total
x2A_contrato = []
for x1A in x1A_range:
    # a_A/(1-a_A) * x2A/x1A = a_B/(1-a_B) * (T2-x2A)/(T1-x1A)
    # x2A * [a_A/((1-a_A)*x1A) + a_B/((1-a_B)*(T1-x1A))] = a_B*T2/((1-a_B)*(T1-x1A))
    coef_esq = a_A / ((1 - a_A) * x1A) + a_B / ((1 - a_B) * (T1 - x1A))
    rhs = a_B * T2 / ((1 - a_B) * (T1 - x1A))
    x2A_contrato.append(rhs / coef_esq)
x2A_contrato = np.array(x2A_contrato)

fig, ax = plt.subplots(figsize=(8, 8))

# Caixa de Edgeworth
ax.set_xlim(0, T1); ax.set_ylim(0, T2)
ax.set_xlabel("$x_1^A$ →", fontsize=13)
ax.set_ylabel("$x_2^A$ →", fontsize=13)

# Eixo secundário para B
ax2 = ax.secondary_xaxis("top")
ax2.set_xlabel("← $x_1^B$", fontsize=13)
ax2.set_xticks([0, 2, 4, 6, 8, 10])
ax2.set_xticklabels([10, 8, 6, 4, 2, 0])
ax3 = ax.secondary_yaxis("right")
ax3.set_ylabel("← $x_2^B$", fontsize=13)
ax3.set_yticks([0, 2, 4, 6, 8, 10])
ax3.set_yticklabels([10, 8, 6, 4, 2, 0])

# Curvas de indiferença de A passando pela dotação
uA_dot = w1[0]**a_A * w1[1]**(1 - a_A)
x1_ci = np.linspace(0.1, T1, 200)
x2_ci_A = (uA_dot / x1_ci**a_A)**(1 / (1 - a_A))
ax.plot(x1_ci, x2_ci_A, "b--", alpha=0.5, label="CI de A (dotação)")

# Curvas de indiferença de B passando pela dotação
uB_dot = w2[0]**a_B * w2[1]**(1 - a_B)
x1B_ci = np.linspace(0.1, T1, 200)
x2B_ci = (uB_dot / x1B_ci**a_B)**(1 / (1 - a_B))
# Converter para coordenadas de A
ax.plot(T1 - x1B_ci, T2 - x2B_ci, "r--", alpha=0.5, label="CI de B (dotação)")

# Curva de contrato
ax.plot(x1A_range, x2A_contrato, "k-", linewidth=2.5, label="Curva de contrato")

# Dotação
ax.plot(w1[0], w1[1], "go", markersize=12, zorder=5, label=f"Dotação ({w1[0]},{w1[1]})")

ax.set_title("Caixa de Edgeworth")
ax.legend(loc="upper left", fontsize=10); plt.show()

# %% [markdown]
# ## 3. Monopólio vs. Competição (Cap. 15)
# Comparação de quantidade, preço, excedentes e peso morto.

# %%
# Demanda inversa: P = a - bQ; Custo: C(Q) = c*Q (custo marginal constante)
a_m, b_m, c_m = 100, 1, 20

# Competição: P = CMg → Q_c = (a-c)/b
Q_comp = (a_m - c_m) / b_m
P_comp = c_m

# Monopólio: RMg = CMg → a - 2bQ = c → Q_m = (a-c)/(2b)
Q_mono = (a_m - c_m) / (2 * b_m)
P_mono = a_m - b_m * Q_mono

# Excedentes
EC_comp = 0.5 * (a_m - P_comp) * Q_comp
EP_comp = 0  # lucro zero em competição com CMg constante

EC_mono = 0.5 * (a_m - P_mono) * Q_mono
EP_mono = (P_mono - c_m) * Q_mono
DWL = 0.5 * (P_mono - c_m) * (Q_comp - Q_mono)

print("=== Monopólio vs. Competição ===")
print(f"{'':>20} {'Competição':>12} {'Monopólio':>12}")
print("-" * 46)
print(f"{'Quantidade':>20} {Q_comp:>12.1f} {Q_mono:>12.1f}")
print(f"{'Preço':>20} {P_comp:>12.1f} {P_mono:>12.1f}")
print(f"{'Exc. Consumidor':>20} {EC_comp:>12.1f} {EC_mono:>12.1f}")
print(f"{'Exc. Produtor':>20} {EP_comp:>12.1f} {EP_mono:>12.1f}")
print(f"{'Bem-estar total':>20} {EC_comp+EP_comp:>12.1f} {EC_mono+EP_mono:>12.1f}")
print(f"{'Peso morto (DWL)':>20} {'0':>12} {DWL:>12.1f}")

# --- Gráfico ---
Q_range = np.linspace(0, 100, 200)
P_demanda = a_m - b_m * Q_range
RMg = a_m - 2 * b_m * Q_range

fig, ax = plt.subplots()
ax.plot(Q_range, P_demanda, "b-", linewidth=2, label="Demanda")
ax.plot(Q_range, RMg, "b--", linewidth=2, label="RMg")
ax.axhline(c_m, color="red", linewidth=2, label=f"CMg = {c_m}")

# DWL
ax.fill([Q_mono, Q_comp, Q_mono], [P_mono, c_m, c_m],
        alpha=0.3, color="yellow", label=f"DWL = {DWL:.0f}")

# Lucro do monopólio
ax.fill_between([0, Q_mono], c_m, P_mono, alpha=0.15, color="green",
                label=f"Lucro = {EP_mono:.0f}")

ax.plot(Q_mono, P_mono, "rs", markersize=10, zorder=5, label="Monopólio")
ax.plot(Q_comp, P_comp, "go", markersize=10, zorder=5, label="Competição")

ax.set_xlabel("Quantidade ($Q$)"); ax.set_ylabel("Preço ($P$)")
ax.set_title("Monopólio vs. Competição Perfeita")
ax.set_xlim(0, 100); ax.set_ylim(0, 110)
ax.legend(fontsize=10); plt.show()

# %% [markdown]
# ## 4. Oligopólio de Cournot — Convergência com n Firmas (Cap. 16)
# À medida que n → ∞, o Cournot converge para a competição perfeita.

# %%
a_o, b_o, c_o = 100, 1, 20
n_firmas = np.arange(1, 21)

Q_cournot = []
P_cournot = []
lucro_firma = []

for n in n_firmas:
    # Nash simétrico: q_i = (a-c) / (b*(n+1))
    qi = (a_o - c_o) / (b_o * (n + 1))
    Q_total = n * qi
    P = a_o - b_o * Q_total
    pi = (P - c_o) * qi
    Q_cournot.append(Q_total)
    P_cournot.append(P)
    lucro_firma.append(pi)

fig, axes = plt.subplots(1, 3, figsize=(16, 5))

axes[0].plot(n_firmas, Q_cournot, "b-o", markersize=5)
axes[0].axhline(Q_comp, color="gray", ls="--", label=f"Competição (Q={Q_comp:.0f})")
axes[0].axhline(Q_mono, color="red", ls=":", label=f"Monopólio (Q={Q_mono:.0f})")
axes[0].set_xlabel("Número de firmas ($n$)"); axes[0].set_ylabel("$Q$ total")
axes[0].set_title("Quantidade Total"); axes[0].legend()

axes[1].plot(n_firmas, P_cournot, "r-o", markersize=5)
axes[1].axhline(c_o, color="gray", ls="--", label=f"CMg = {c_o}")
axes[1].axhline(P_mono, color="red", ls=":", label=f"P monop. = {P_mono:.0f}")
axes[1].set_xlabel("Número de firmas ($n$)"); axes[1].set_ylabel("Preço ($P$)")
axes[1].set_title("Preço de Mercado"); axes[1].legend()

axes[2].plot(n_firmas, lucro_firma, "g-o", markersize=5)
axes[2].set_xlabel("Número de firmas ($n$)"); axes[2].set_ylabel("Lucro por firma ($\\pi_i$)")
axes[2].set_title("Lucro Individual")

plt.tight_layout(); plt.show()

print(f"Com n=1: Q={Q_cournot[0]:.0f}, P={P_cournot[0]:.0f} (monopólio)")
print(f"Com n=20: Q={Q_cournot[-1]:.1f}, P={P_cournot[-1]:.1f} (quase competição)")

# %% [markdown]
# ## 5. Discriminação de Preços (Cap. 15)
# Monopólio com dois mercados separados (3º grau).

# %%
# Mercado A (mais elástico): PA = 80 - 2*QA
# Mercado B (menos elástico): PB = 120 - QA
a_A_dp, b_A_dp = 80, 2
a_B_dp, b_B_dp = 120, 1
c_dp = 20

# Preço único (mercados combinados): Q = QA + QB
# QA = (80-P)/2, QB = 120-P → Q = (80-P)/2 + 120-P = 160 - 1.5P (para P<80)
# P = (320 - 2Q)/3 → RMg = (320 - 4Q)/3

# Discriminação: RMgA = RMgB = CMg
QA_disc = (a_A_dp - c_dp) / (2 * b_A_dp)
QB_disc = (a_B_dp - c_dp) / (2 * b_B_dp)
PA_disc = a_A_dp - b_A_dp * QA_disc
PB_disc = a_B_dp - b_B_dp * QB_disc

# Preço único
# Demanda total inversa (para P < 80): P = (a_A/b_A + a_B/b_B - Q) / (1/b_A + 1/b_B)
# Simplificado: resolver RMg_total = c
Q_unico_total = ((a_A_dp / b_A_dp + a_B_dp / b_B_dp) - c_dp * (1/b_A_dp + 1/b_B_dp)) / 2
P_unico = (a_A_dp / b_A_dp + a_B_dp / b_B_dp - Q_unico_total) / (1/b_A_dp + 1/b_B_dp)

lucro_disc = (PA_disc - c_dp) * QA_disc + (PB_disc - c_dp) * QB_disc
lucro_unico = (P_unico - c_dp) * Q_unico_total

print("=== Discriminação de Preços (3º Grau) ===")
print(f"\n  Discriminação:")
print(f"    Mercado A: PA = {PA_disc:.1f}, QA = {QA_disc:.1f}")
print(f"    Mercado B: PB = {PB_disc:.1f}, QB = {QB_disc:.1f}")
print(f"    Lucro total = {lucro_disc:.1f}")
print(f"\n  Preço único:")
print(f"    P = {P_unico:.1f}, Q = {Q_unico_total:.1f}")
print(f"    Lucro total = {lucro_unico:.1f}")
print(f"\n  Ganho com discriminação: {lucro_disc - lucro_unico:.1f}")

# %% [markdown]
# ## Exercícios
# - Aumente o imposto gradualmente de 0 a 30. Plote DWL vs. t. O DWL cresce linearmente?
# - Na Caixa de Edgeworth, mude a_A para 0.5. A curva de contrato vira a diagonal. Por quê?
# - Simule Bertrand (competição em preço) com 2 firmas. Compare com Cournot.
# - Calcule o markup de Lerner (P-CMg)/P para cada n no Cournot. Relacione com 1/n.

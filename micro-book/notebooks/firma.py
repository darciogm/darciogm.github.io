"""
Microeconomia — Caderno 4: Firma e Custos
Capítulos 10-12

Execute: python firma.py
"""
import numpy as np
import matplotlib.pyplot as plt
from scipy.optimize import minimize_scalar

plt.rcParams.update({
    "figure.figsize": (8, 6),
    "axes.grid": True,
    "grid.alpha": 0.3,
    "font.size": 12,
})

# %% [markdown]
# ## 1. Função de Produção e Isoquantas (Cap. 10)
# Cobb-Douglas: f(K, L) = A * K^alpha * L^beta

# %%
A, alpha, beta = 1, 0.3, 0.7  # retornos constantes de escala (alpha + beta = 1)

def producao(K, L):
    return A * K**alpha * L**beta

# Isoquantas
K_grid = np.linspace(0.1, 20, 300)
fig, ax = plt.subplots()
for q_bar in [2, 4, 6, 8]:
    L_iso = (q_bar / (A * K_grid**alpha))**(1 / beta)
    ax.plot(K_grid, L_iso, label=f"q = {q_bar}")

ax.set_xlim(0, 20); ax.set_ylim(0, 20)
ax.set_xlabel("Capital ($K$)"); ax.set_ylabel("Trabalho ($L$)")
ax.set_title(f"Isoquantas — Cobb-Douglas ($\\alpha={alpha}, \\beta={beta}$)")
ax.legend(); plt.show()

# Produto marginal
print("=== Produto Marginal no ponto K=4, L=8 ===")
K0, L0 = 4, 8
PMgK = alpha * A * K0**(alpha - 1) * L0**beta
PMgL = beta * A * K0**alpha * L0**(beta - 1)
TMST = PMgL / PMgK
print(f"  PMg_K = {PMgK:.4f}")
print(f"  PMg_L = {PMgL:.4f}")
print(f"  TMST (L por K) = PMg_L/PMg_K = {TMST:.4f}")
print(f"  Interpretação: trocar 1 unidade de K requer {TMST:.2f} unidades a menos de L.")

# %% [markdown]
# ## 2. Minimização de Custo — Isoquanta e Isocusto (Cap. 11)
# Encontrar a combinação (K, L) que minimiza custo para produzir q unidades.

# %%
w = 10   # salário (preço do trabalho)
r = 20   # aluguel do capital (preço do capital)
q_meta = 5  # produção desejada

# Solução analítica para Cobb-Douglas com retornos constantes
# K* = q * (alpha/beta * w/r)^(beta) / A
# L* = q * (beta/alpha * r/w)^(alpha) / A
K_star = (q_meta / A) * (alpha / beta * w / r)**beta
L_star = (q_meta / A) * (beta / alpha * r / w)**alpha
custo_min = w * L_star + r * K_star

print(f"=== Minimização de Custo para q = {q_meta} ===")
print(f"  K* = {K_star:.4f},  L* = {L_star:.4f}")
print(f"  Custo mínimo = w·L* + r·K* = {custo_min:.2f}")
print(f"  TMST = w/r = {w/r:.2f} (condição de tangência)")

# --- Gráfico ---
fig, ax = plt.subplots()
K_g = np.linspace(0.1, 15, 300)

# Isoquanta
L_iso = (q_meta / (A * K_g**alpha))**(1 / beta)
ax.plot(K_g, L_iso, "b-", linewidth=2, label=f"Isoquanta (q={q_meta})")

# Isocusto ótimo
L_isocusto = (custo_min - r * K_g) / w
ax.plot(K_g[L_isocusto >= 0], L_isocusto[L_isocusto >= 0], "r--", linewidth=2,
        label=f"Isocusto (C={custo_min:.1f})")

# Ponto ótimo
ax.plot(K_star, L_star, "ko", markersize=10, zorder=5, label="Escolha ótima")

ax.set_xlim(0, 15); ax.set_ylim(0, 15)
ax.set_xlabel("Capital ($K$)"); ax.set_ylabel("Trabalho ($L$)")
ax.set_title("Minimização de Custo")
ax.legend(); plt.show()

# %% [markdown]
# ## 3. Curvas de Custo (Cap. 11)
# Derivar CT, CMe, CMg a partir da função de produção.

# %%
def custo_total(q, w=10, r=20, A=1, alpha=0.3, beta=0.7):
    """Custo total para Cobb-Douglas com retornos constantes: C(q) = c * q"""
    # Com retornos constantes, custo total é linear em q
    # c = custo unitário
    K_opt = (q / A) * (alpha / beta * w / r)**beta
    L_opt = (q / A) * (beta / alpha * r / w)**alpha
    return w * L_opt + r * K_opt

# Para retornos decrescentes (alpha + beta < 1), custo marginal é crescente
alpha_d, beta_d = 0.25, 0.5  # retornos decrescentes

def custo_total_dec(q, w=10, r=20):
    """Custo total com retornos decrescentes + custo fixo"""
    if q == 0:
        return 50  # custo fixo
    # Aproximação numérica via minimização
    from scipy.optimize import minimize
    def obj(x):
        K, L = x
        if K <= 0 or L <= 0:
            return 1e10
        return w * L + r * K
    def constraint(x):
        K, L = x
        return A * K**alpha_d * L**beta_d - q
    from scipy.optimize import minimize
    res = minimize(obj, [1, 1], method="SLSQP",
                   constraints={"type": "eq", "fun": constraint},
                   bounds=[(0.001, None), (0.001, None)])
    return res.fun + 50  # +custo fixo

q_range = np.linspace(0.1, 10, 100)
CT = np.array([custo_total_dec(q) for q in q_range])
CMe = CT / q_range
# Custo marginal numérico
dq = q_range[1] - q_range[0]
CMg = np.gradient(CT, dq)
CVMe = (CT - 50) / q_range  # custo variável médio

fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(14, 6))

ax1.plot(q_range, CT, "b-", linewidth=2)
ax1.set_xlabel("Quantidade ($q$)"); ax1.set_ylabel("Custo Total ($CT$)")
ax1.set_title("Custo Total (retornos decrescentes)")

ax2.plot(q_range, CMe, "b-", linewidth=2, label="CMe")
ax2.plot(q_range, CVMe, "g--", linewidth=2, label="CVMe")
ax2.plot(q_range, CMg, "r-", linewidth=2, label="CMg")
ax2.set_xlabel("Quantidade ($q$)"); ax2.set_ylabel("R$/unidade")
ax2.set_title("Curvas de Custo Unitário")
ax2.set_ylim(0, max(CMe) * 1.2)
ax2.legend()

plt.tight_layout(); plt.show()

print("Observação: CMg cruza CMe no ponto de mínimo do CMe (escala eficiente).")

# %% [markdown]
# ## 4. Maximização de Lucro e Oferta Competitiva (Cap. 12)
# Firma tomadora de preço: P = CMg e oferta = CMg acima de CVMe.

# %%
# Usar custo com retornos decrescentes
precos = [20, 30, 40, 50, 60, 70]
q_ofertada = []

for preco in precos:
    # Encontrar q onde CMg = P
    idx = np.argmin(np.abs(CMg - preco))
    q_opt = q_range[idx]
    # Só produz se P >= CVMe
    if preco >= CVMe[idx]:
        q_ofertada.append(q_opt)
    else:
        q_ofertada.append(0)

print("=== Oferta Competitiva ===")
print(f"{'Preço':>8} {'Quantidade':>12} {'Lucro':>10}")
print("-" * 32)
for p, q in zip(precos, q_ofertada):
    if q > 0:
        idx = np.argmin(np.abs(q_range - q))
        lucro = p * q - CT[idx]
        print(f"{p:>8} {q:>12.2f} {lucro:>10.2f}")
    else:
        print(f"{p:>8} {'(não prod.)':>12} {'−CF':>10}")

# Curva de oferta
fig, ax = plt.subplots()
# CMg acima de CVMe mínimo
cvme_min_idx = np.argmin(CVMe)
q_supply = q_range[cvme_min_idx:]
p_supply = CMg[cvme_min_idx:]

ax.plot(q_supply, p_supply, "r-", linewidth=3, label="Oferta (CMg acima de CVMe)")
ax.plot(q_range, CVMe, "g--", linewidth=1.5, alpha=0.6, label="CVMe")
ax.plot(q_range, CMe, "b--", linewidth=1.5, alpha=0.6, label="CMe")

# Preço e quantidade de equilíbrio para um preço
p_ex = 50
idx_eq = np.argmin(np.abs(CMg - p_ex))
ax.plot(q_range[idx_eq], p_ex, "ko", markersize=10, zorder=5)
ax.axhline(p_ex, color="gray", ls=":", alpha=0.5)

ax.set_xlabel("Quantidade ($q$)"); ax.set_ylabel("Preço / Custo (R$/un.)")
ax.set_title("Curva de Oferta da Firma Competitiva")
ax.set_ylim(0, 80)
ax.legend(); plt.show()

# %% [markdown]
# ## 5. Retornos de Escala (Cap. 10)
# Comparação visual: o que acontece ao dobrar todos os insumos?

# %%
escalas = np.linspace(1, 5, 50)  # multiplicador de insumos
K_base, L_base = 2, 3

cenarios = [
    ("Crescentes (α+β=1.3)", 0.5, 0.8),
    ("Constantes (α+β=1.0)", 0.3, 0.7),
    ("Decrescentes (α+β=0.75)", 0.25, 0.5),
]

fig, ax = plt.subplots()
for nome, a, b in cenarios:
    q_vals = [A * (t * K_base)**a * (t * L_base)**b for t in escalas]
    ax.plot(escalas, q_vals, linewidth=2, label=nome)

ax.plot(escalas, [A * K_base**0.3 * L_base**0.7 * t for t in escalas],
        "k:", alpha=0.5, label="Referência linear")
ax.set_xlabel("Fator de escala ($t$)")
ax.set_ylabel("Produção $f(tK, tL)$")
ax.set_title("Retornos de Escala")
ax.legend(); plt.show()

# %% [markdown]
# ## Exercícios
# - Calcule a elasticidade de substituição para a CES: f(K,L) = (aK^ρ + bL^ρ)^(1/ρ).
#   Plote isoquantas para ρ = -0.5, 0 (Cobb-Douglas), 1 (subst. perfeitos).
# - Com custo fixo de R$100, calcule o preço de shut-down (curto prazo) e o preço de saída (longo prazo).
# - Simule a entrada de firmas num mercado competitivo até lucro zero.

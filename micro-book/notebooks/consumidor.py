"""
Microeconomia — Caderno 1: Teoria do Consumidor
Capítulos 3-6

Execute: python consumidor.py
Ou abra no Google Colab / Jupyter (formato percent script).
"""
import numpy as np
import matplotlib.pyplot as plt
from scipy.optimize import minimize_scalar, minimize

plt.rcParams.update({
    "figure.figsize": (8, 6),
    "axes.grid": True,
    "grid.alpha": 0.3,
    "font.size": 12,
})

# %% [markdown]
# ## 1. Curvas de Indiferença (Cap. 3)
# Três famílias de preferências: Cobb-Douglas, substitutos perfeitos e complementos perfeitos.

# %%
# --- Funções de utilidade ---
def cobb_douglas(x1, x2, a=0.5):
    """Utilidade Cobb-Douglas: u = x1^a * x2^(1-a)"""
    return x1**a * x2**(1 - a)

def substitutos(x1, x2, a=1, b=1):
    """Substitutos perfeitos: u = a*x1 + b*x2"""
    return a * x1 + b * x2

def complementos(x1, x2):
    """Complementos perfeitos: u = min(x1, x2)"""
    return np.minimum(x1, x2)

# --- Plotar curvas de indiferença para Cobb-Douglas ---
x1 = np.linspace(0.1, 10, 200)

fig, axes = plt.subplots(1, 3, figsize=(16, 5))

# Cobb-Douglas
for u_bar in [1, 2, 3, 4]:
    x2 = (u_bar / x1**0.5) ** 2  # u = x1^0.5 * x2^0.5 => x2 = (u/x1^a)^(1/(1-a))
    axes[0].plot(x1, x2, label=f"u = {u_bar}")
axes[0].set_xlim(0, 10); axes[0].set_ylim(0, 10)
axes[0].set_xlabel("$x_1$"); axes[0].set_ylabel("$x_2$")
axes[0].set_title("Cobb-Douglas ($a = 0{,}5$)")
axes[0].legend()

# Substitutos perfeitos
for u_bar in [2, 4, 6, 8]:
    x2_sub = (u_bar - x1)
    axes[1].plot(x1[x2_sub >= 0], x2_sub[x2_sub >= 0], label=f"u = {u_bar}")
axes[1].set_xlim(0, 10); axes[1].set_ylim(0, 10)
axes[1].set_xlabel("$x_1$"); axes[1].set_ylabel("$x_2$")
axes[1].set_title("Substitutos Perfeitos")
axes[1].legend()

# Complementos perfeitos
for u_bar in [1, 2, 3, 4]:
    axes[2].plot([u_bar, u_bar], [u_bar, 10], "C0")
    axes[2].plot([u_bar, 10], [u_bar, u_bar], "C0")
    axes[2].annotate(f"u={u_bar}", (u_bar + 0.2, u_bar + 0.2))
axes[2].set_xlim(0, 10); axes[2].set_ylim(0, 10)
axes[2].set_xlabel("$x_1$"); axes[2].set_ylabel("$x_2$")
axes[2].set_title("Complementos Perfeitos")

plt.tight_layout(); plt.show()

# %% [markdown]
# ## 2. Otimização do Consumidor (Cap. 4)
# Restrição orçamentária e escolha ótima via tangência (Cobb-Douglas).

# %%
# --- Parâmetros ---
renda = 100       # renda disponível (m)
p1 = 5            # preço do bem 1
p2 = 10           # preço do bem 2
alpha = 0.6       # peso de x1 na Cobb-Douglas

# Solução analítica para Cobb-Douglas: x1* = alpha*m/p1, x2* = (1-alpha)*m/p2
x1_star = alpha * renda / p1
x2_star = (1 - alpha) * renda / p2
u_star = cobb_douglas(x1_star, x2_star, alpha)

print("=== Escolha Ótima do Consumidor ===")
print(f"  x1* = {x1_star:.2f},  x2* = {x2_star:.2f}")
print(f"  Utilidade máxima = {u_star:.2f}")
print(f"  Gasto total = p1·x1* + p2·x2* = {p1*x1_star + p2*x2_star:.2f}  (= m = {renda})")

# --- Gráfico ---
x1_grid = np.linspace(0.1, renda / p1, 200)
x2_budget = (renda - p1 * x1_grid) / p2  # restrição orçamentária
x2_indif = (u_star / x1_grid**alpha) ** (1 / (1 - alpha))  # curva de indiferença ótima

fig, ax = plt.subplots()
ax.plot(x1_grid, x2_budget, "k-", linewidth=2, label="Restrição orçamentária")
ax.plot(x1_grid, x2_indif, "r--", linewidth=2, label=f"Curva de indiferença (u*={u_star:.1f})")
ax.plot(x1_star, x2_star, "ro", markersize=10, zorder=5, label="Cesta ótima")
ax.set_xlim(0, renda / p1 + 1); ax.set_ylim(0, renda / p2 + 1)
ax.set_xlabel("$x_1$"); ax.set_ylabel("$x_2$")
ax.set_title("Otimização do Consumidor — Cobb-Douglas")
ax.legend(); plt.show()

# %% [markdown]
# ## 3. Efeitos Renda e Substituição — Decomposição de Slutsky (Cap. 5)
# Aumento de p1 decomposto em efeito substituição e efeito renda.

# %%
p1_novo = 8  # novo preço do bem 1

# Cesta original
xA = np.array([x1_star, x2_star])
uA = cobb_douglas(*xA, alpha)

# Cesta final (novos preços, mesma renda)
x1_C = alpha * renda / p1_novo
x2_C = (1 - alpha) * renda / p2
xC = np.array([x1_C, x2_C])

# Slutsky: renda compensada para poder comprar cesta original com novos preços
renda_slutsky = p1_novo * xA[0] + p2 * xA[1]
x1_B = alpha * renda_slutsky / p1_novo
x2_B = (1 - alpha) * renda_slutsky / p2
xB = np.array([x1_B, x2_B])

efeito_subst = xB[0] - xA[0]
efeito_renda = xC[0] - xB[0]
efeito_total = xC[0] - xA[0]

print("=== Decomposição de Slutsky ===")
print(f"  Cesta A (original):      x1 = {xA[0]:.2f}, x2 = {xA[1]:.2f}")
print(f"  Cesta B (Slutsky comp.): x1 = {xB[0]:.2f}, x2 = {xB[1]:.2f}")
print(f"  Cesta C (final):         x1 = {xC[0]:.2f}, x2 = {xC[1]:.2f}")
print(f"\n  Efeito substituição (A→B): Δx1 = {efeito_subst:+.2f}")
print(f"  Efeito renda       (B→C): Δx1 = {efeito_renda:+.2f}")
print(f"  Efeito total       (A→C): Δx1 = {efeito_total:+.2f}")

# --- Gráfico ---
fig, ax = plt.subplots()
x1g = np.linspace(0.1, 25, 300)

# Orçamentos
ax.plot(x1g, (renda - p1 * x1g) / p2, "k-", label=f"Orçamento original (p1={p1})")
ax.plot(x1g, (renda - p1_novo * x1g) / p2, "k--", label=f"Orçamento novo (p1={p1_novo})")
ax.plot(x1g, (renda_slutsky - p1_novo * x1g) / p2, "gray", ls=":", label="Orçamento Slutsky")

# Cestas
for ponto, nome, cor in [(xA, "A", "blue"), (xB, "B", "orange"), (xC, "C", "red")]:
    ax.plot(*ponto, "o", color=cor, markersize=10, zorder=5)
    ax.annotate(nome, ponto, textcoords="offset points", xytext=(8, 8), fontsize=14, color=cor)

ax.set_xlim(0, 22); ax.set_ylim(0, 14)
ax.set_xlabel("$x_1$"); ax.set_ylabel("$x_2$")
ax.set_title("Decomposição de Slutsky")
ax.legend(fontsize=10); plt.show()

# %% [markdown]
# ## 4. Elasticidade e Receita (Cap. 6)
# Elasticidade-preço ao longo de uma demanda linear e sua relação com receita total.

# %%
# Demanda linear: Q = a - b*P
a_dem, b_dem = 100, 2
P_range = np.linspace(1, 49, 200)
Q_range = a_dem - b_dem * P_range
Receita = P_range * Q_range

# Elasticidade-preço da demanda: epsilon = dQ/dP * P/Q = -b * P/Q
epsilon = -b_dem * P_range / Q_range

fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(14, 5))

# Demanda e receita
ax1.plot(Q_range, P_range, "b-", linewidth=2, label="Demanda")
ax1b = ax1.twinx()
ax1b.plot(Q_range, Receita, "r--", linewidth=2, label="Receita total")
ax1.set_xlabel("Quantidade ($Q$)")
ax1.set_ylabel("Preço ($P$)", color="blue")
ax1b.set_ylabel("Receita ($R$)", color="red")
ax1.set_title("Demanda Linear e Receita Total")

# Elasticidade
ax2.plot(Q_range, np.abs(epsilon), "g-", linewidth=2)
ax2.axhline(1, color="gray", ls="--", alpha=0.7)
ax2.annotate("|ε| = 1 (unitária)", xy=(50, 1.05), fontsize=11, color="gray")
ax2.set_xlabel("Quantidade ($Q$)")
ax2.set_ylabel("$|\\varepsilon|$")
ax2.set_title("Elasticidade-Preço da Demanda")

plt.tight_layout(); plt.show()

# Preço que maximiza receita
P_max_R = a_dem / (2 * b_dem)
Q_max_R = a_dem - b_dem * P_max_R
print(f"Receita máxima em P = {P_max_R:.1f}, Q = {Q_max_R:.1f} (|ε| = 1)")

# %% [markdown]
# ## Exercício
# Modifique os parâmetros abaixo e re-execute para explorar:
# - O que acontece com a decomposição de Slutsky quando alpha → 0?
# - E quando p1 triplica em vez de aumentar pouco?
# - Construa uma demanda com elasticidade constante: Q = A * P^(-ε). Como fica a receita?

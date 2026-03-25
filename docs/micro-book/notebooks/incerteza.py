"""
Microeconomia — Caderno 2: Incerteza e Comportamento
Capítulos 7-8

Execute: python incerteza.py
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
# ## 1. Utilidade Esperada e Equivalente de Certeza (Cap. 7)
# Loteria simples: ganhar W1 com probabilidade p, ou W2 com probabilidade (1-p).

# %%
# --- Utilidade côncava (avesso ao risco) ---
def u(w):
    """Utilidade logarítmica"""
    return np.log(w)

W1, W2 = 10, 100   # resultados possíveis
p = 0.5             # probabilidade de W1

# Valor esperado e utilidade esperada
EW = p * W1 + (1 - p) * W2
EU = p * u(W1) + (1 - p) * u(W2)

# Equivalente de certeza: valor certo que dá a mesma utilidade esperada
CE = np.exp(EU)  # inversa de log
premio_risco = EW - CE

print("=== Loteria (50/50): R$10 ou R$100 ===")
print(f"  Valor esperado (E[W])           = R${EW:.2f}")
print(f"  Utilidade esperada (E[u(W)])     = {EU:.4f}")
print(f"  Equivalente de certeza (CE)      = R${CE:.2f}")
print(f"  Prêmio de risco (E[W] - CE)     = R${premio_risco:.2f}")
print(f"\n  Interpretação: o agente aceitaria trocar a loteria por R${CE:.0f} certos.")

# --- Gráfico ---
w_grid = np.linspace(1, 120, 300)
fig, ax = plt.subplots()
ax.plot(w_grid, u(w_grid), "b-", linewidth=2, label="$u(W) = \\ln(W)$")
ax.plot([W1, W2], [u(W1), u(W2)], "ro", markersize=8)
ax.plot([W1, W2], [u(W1), u(W2)], "r--", alpha=0.5, label="Corda (loteria)")
ax.plot(EW, EU, "gs", markersize=10, label=f"E[W]={EW}, E[u]={EU:.2f}")
ax.plot(CE, EU, "m^", markersize=10, label=f"CE = {CE:.1f}")

# Setas ilustrativas
ax.annotate("", xy=(CE, EU), xytext=(EW, EU),
            arrowprops=dict(arrowstyle="<->", color="purple", lw=1.5))
ax.text((CE + EW) / 2, EU + 0.15, f"Prêmio\nde risco\n= {premio_risco:.1f}",
        ha="center", fontsize=10, color="purple")

ax.set_xlabel("Riqueza ($W$)"); ax.set_ylabel("$u(W)$")
ax.set_title("Aversão ao Risco e Equivalente de Certeza")
ax.legend(loc="lower right"); plt.show()

# %% [markdown]
# ## 2. Classificação de Atitudes ao Risco
# Comparação: avesso, neutro e amante do risco.

# %%
fig, axes = plt.subplots(1, 3, figsize=(16, 5))
w = np.linspace(0.5, 10, 200)

utilidades = [
    ("Avesso ao risco", np.sqrt(w), "$u = \\sqrt{W}$"),
    ("Neutro ao risco", w, "$u = W$"),
    ("Amante do risco", w**2, "$u = W^2$"),
]

for ax, (titulo, u_vals, formula) in zip(axes, utilidades):
    ax.plot(w, u_vals, "b-", linewidth=2, label=formula)
    # Loteria entre w=2 e w=8
    w_lo, w_hi = 2, 8
    idx_lo = np.searchsorted(w, w_lo)
    idx_hi = np.searchsorted(w, w_hi)
    ax.plot([w_lo, w_hi], [u_vals[idx_lo], u_vals[idx_hi]], "r--", alpha=0.6)
    ax.set_xlabel("$W$"); ax.set_ylabel("$u(W)$")
    ax.set_title(titulo)
    ax.legend(fontsize=11)

plt.tight_layout(); plt.show()

# %% [markdown]
# ## 3. Prospect Theory — Função Valor (Cap. 8)
# Kahneman & Tversky: assimetria entre ganhos e perdas.

# %%
def valor_prospect(x, alpha_pt=0.88, beta=0.88, lam=2.25):
    """
    Função valor da Prospect Theory.
    Ganhos: v(x) = x^alpha
    Perdas: v(x) = -lambda * (-x)^beta
    """
    return np.where(x >= 0, x**alpha_pt, -lam * (-x)**beta)

x = np.linspace(-10, 10, 500)
v = valor_prospect(x)

fig, ax = plt.subplots()
ax.plot(x, v, "b-", linewidth=2.5)
ax.axhline(0, color="gray", linewidth=0.5)
ax.axvline(0, color="gray", linewidth=0.5)
ax.fill_between(x[x < 0], v[x < 0], alpha=0.1, color="red", label="Domínio das perdas")
ax.fill_between(x[x >= 0], v[x >= 0], alpha=0.1, color="green", label="Domínio dos ganhos")
ax.set_xlabel("Resultado ($x$)")
ax.set_ylabel("Valor $v(x)$")
ax.set_title("Função Valor — Prospect Theory (Kahneman & Tversky)")
ax.legend(); plt.show()

print("Observações:")
print("  - Côncava para ganhos (aversão ao risco em ganhos)")
print("  - Convexa para perdas (busca de risco em perdas)")
print("  - Mais íngreme para perdas (aversão à perda, λ ≈ 2.25)")

# %% [markdown]
# ## 4. Desconto Temporal: Exponencial vs. Hiperbólico (Cap. 8)
# Inconsistência temporal e viés do presente.

# %%
def desconto_exponencial(t, delta=0.95):
    """Desconto exponencial: D(t) = delta^t"""
    return delta**t

def desconto_hiperbolico(t, beta_h=0.7, delta=0.95):
    """Desconto quase-hiperbólico (beta-delta): D(0)=1, D(t)=beta*delta^t para t>=1"""
    return np.where(t == 0, 1.0, beta_h * delta**t)

def desconto_hiperbolico_puro(t, k=1.0):
    """Desconto hiperbólico: D(t) = 1/(1+kt)"""
    return 1 / (1 + k * t)

t = np.arange(0, 21)

fig, ax = plt.subplots()
ax.plot(t, desconto_exponencial(t), "b-o", markersize=5, label="Exponencial ($\\delta=0.95$)")
ax.plot(t, desconto_hiperbolico(t), "r-s", markersize=5, label="Quase-hiperbólico ($\\beta=0.7, \\delta=0.95$)")
ax.plot(t, desconto_hiperbolico_puro(t, k=0.5), "g-^", markersize=5, label="Hiperbólico ($k=0.5$)")
ax.set_xlabel("Período ($t$)")
ax.set_ylabel("Fator de desconto $D(t)$")
ax.set_title("Comparação de Funções de Desconto")
ax.legend(); plt.show()

# --- Exemplo numérico de inconsistência temporal ---
delta, beta_h = 0.95, 0.7
u_hoje_vs_amanha = beta_h * delta * 120  # valor hoje de 120 amanhã
u_hoje_de_110 = 110                       # 110 hoje

print("\n=== Inconsistência Temporal (β-δ) ===")
print(f"  Valor presente de R$120 amanhã (visto de hoje):  {u_hoje_vs_amanha:.1f}")
print(f"  R$110 hoje:                                      {u_hoje_de_110:.1f}")
print(f"  Decisão hoje: {'esperar' if u_hoje_vs_amanha > u_hoje_de_110 else 'receber agora'}")

# Mesma escolha vista de t=10 para t=11 vs t=10
u_t10_de_t11 = beta_h * delta * 120
u_t10_de_t10 = 110
print(f"\n  Visto de t=10: R$120 em t=11 vale {u_t10_de_t11:.1f} vs R$110 em t=10 = {u_t10_de_t10:.1f}")
print(f"  Decisão em t=10: {'esperar' if u_t10_de_t11 > u_t10_de_t10 else 'receber agora'}")
print("  → Com desconto quase-hiperbólico, o agente reverte a decisão ao se aproximar do prazo!")

# %% [markdown]
# ## 5. Simulação: Aversão à Perda e Portfólio (Cap. 7-8)
# Monte Carlo: comparar decisão com utilidade esperada clássica vs. prospect theory.

# %%
np.random.seed(42)
n_sim = 10_000

# Loteria: +50% ou -40% com probabilidades iguais
retorno_bom, retorno_ruim = 0.50, -0.40
riqueza_inicial = 1000

retornos = np.where(np.random.rand(n_sim) < 0.5, retorno_bom, retorno_ruim)
riqueza_final = riqueza_inicial * (1 + retornos)
ganhos_perdas = riqueza_final - riqueza_inicial

# Avaliação pela utilidade esperada (log)
eu_classica = np.mean(np.log(riqueza_final))
eu_ficar = np.log(riqueza_inicial)

# Avaliação pela prospect theory (sobre ganhos/perdas)
vpt = np.mean(valor_prospect(ganhos_perdas / riqueza_inicial * 10))  # escalar para visualizar

print("=== Loteria: +50% ou -40% (50/50) ===")
print(f"  E[retorno] = {np.mean(retornos)*100:+.1f}%  (positivo!)")
print(f"  E[u(W)] com log   = {eu_classica:.4f}  vs  u(W₀) = {eu_ficar:.4f}")
print(f"  → Agente com u=log: {'aceita' if eu_classica > eu_ficar else 'rejeita'}")
print(f"  E[v(x)] prospect  = {vpt:.4f}")
print(f"  → Agente com PT:    {'aceita' if vpt > 0 else 'rejeita (aversão à perda!)'}")

fig, ax = plt.subplots()
ax.hist(ganhos_perdas, bins=50, color="steelblue", edgecolor="white", alpha=0.8)
ax.axvline(0, color="red", ls="--", linewidth=2, label="Ponto de referência")
ax.axvline(np.mean(ganhos_perdas), color="green", ls="-", linewidth=2, label=f"Média = R${np.mean(ganhos_perdas):+.0f}")
ax.set_xlabel("Ganho / Perda (R$)")
ax.set_ylabel("Frequência")
ax.set_title("Distribuição de Resultados — 10.000 simulações")
ax.legend(); plt.show()

# %% [markdown]
# ## Exercícios
# - Altere λ na função valor da Prospect Theory. Com λ=1, o que muda?
# - Calcule o equivalente de certeza para u(W) = W^0.5 (CRRA) com a mesma loteria.
# - Com β=1 no modelo quase-hiperbólico, mostra que a inconsistência desaparece.

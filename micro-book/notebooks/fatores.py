"""
Microeconomia — Caderno 6: Fatores e Tempo
Capítulos 17-18

Execute: python fatores.py
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
# ## 1. Oferta de Trabalho — Escolha Trabalho vs. Lazer (Cap. 17)
# O trabalhador maximiza u(C, L) sujeito a C = w*(T-L), onde L = lazer, T = tempo total.

# %%
T = 24  # horas disponíveis

def utilidade_trab(C, L, sigma=0.5):
    """Utilidade CES: u = (C^rho + L^rho)^(1/rho), rho = 1-1/sigma"""
    rho = 1 - 1 / sigma
    return (C**rho + L**rho)**(1 / rho)

# Solução para Cobb-Douglas u = C^a * L^(1-a)
a_trab = 0.6  # peso do consumo

salarios = np.linspace(1, 50, 200)
horas_trabalhadas = []

for w in salarios:
    # Com u = C^a * L^(1-a): L* = (1-a)*T, C* = a*w*T
    # Na verdade: orçamento C = w*(T-L) + renda_nao_salarial
    # Com renda não-salarial = 0: L* = (1-a)*T (constante para CD pura!)
    # Mais interessante: usar CES ou incluir renda não-salarial
    # Com renda Y0: L* = (1-a)*(w*T + Y0)/w
    Y0 = 50  # renda não-salarial
    L_star = (1 - a_trab) * (w * T + Y0) / w
    L_star = max(0, min(T, L_star))  # garantir que 0 <= L <= T
    h = T - L_star
    horas_trabalhadas.append(h)

horas_trabalhadas = np.array(horas_trabalhadas)

fig, ax = plt.subplots()
ax.plot(salarios, horas_trabalhadas, "b-", linewidth=2)
ax.set_xlabel("Salário por hora ($w$)")
ax.set_ylabel("Horas trabalhadas ($h = T - L$)")
ax.set_title("Oferta de Trabalho (com renda não-salarial)")
plt.show()

print("Com renda não-salarial Y₀ > 0, a oferta de trabalho pode se inclinar para trás:")
print("salários altos → efeito renda domina → menos horas trabalhadas.")

# %% [markdown]
# ## 2. Curva de Oferta de Trabalho Backward-Bending (Cap. 17)
# Com preferências CES, o efeito renda pode dominar para salários altos.

# %%
def oferta_trabalho_ces(w, sigma=0.5, T=24, Y0=0):
    """
    Oferta de trabalho com utilidade CES.
    Para sigma < 1, efeito substituição fraco → backward bending.
    h = T - L, onde L = T / (1 + w^(sigma-1) * ...)

    Usando a solução para u = (C^rho + L^rho)^(1/rho):
    L* = (w*T + Y0) / (w + w^sigma)  (aproximação simplificada)
    """
    # Forma funcional que gera backward-bending
    # L/C = (1/w)^sigma → C = w*L * w^(sigma-1) = L * w^sigma
    # Sub em orçamento: L * w^sigma = w*(T-L) + Y0
    # L * (w^sigma + w) = w*T + Y0
    L_star = (w * T + Y0) / (w**sigma + w)
    L_star = max(0, min(T, L_star))
    return T - L_star

sigmas = [0.3, 0.5, 0.8, 1.5]
w_range = np.linspace(1, 100, 300)

fig, ax = plt.subplots()
for s in sigmas:
    h = [oferta_trabalho_ces(w, sigma=s) for w in w_range]
    ax.plot(w_range, h, linewidth=2, label=f"σ = {s}")

ax.set_xlabel("Salário ($w$)")
ax.set_ylabel("Horas de trabalho ($h$)")
ax.set_title("Oferta de Trabalho — Backward-Bending Supply")
ax.legend(); plt.show()

print("Interpretação:")
print("  σ < 1: efeito renda domina para salários altos → curva se inclina para trás")
print("  σ > 1: efeito substituição domina → oferta sempre crescente")

# %% [markdown]
# ## 3. Valor Presente Líquido (VPL) e TIR (Cap. 18)
# Avaliar projetos de investimento com fluxos de caixa ao longo do tempo.

# %%
from scipy.optimize import brentq

def vpl(fluxos, taxa):
    """Calcula o VPL de uma série de fluxos de caixa, dado uma taxa de desconto."""
    return sum(fc / (1 + taxa)**t for t, fc in enumerate(fluxos))

def tir(fluxos):
    """Calcula a Taxa Interna de Retorno (TIR) usando busca de raiz."""
    try:
        return brentq(lambda r: vpl(fluxos, r), -0.5, 10.0)
    except ValueError:
        return float("nan")

# --- Projeto A: investimento convencional ---
fluxos_A = [-1000, 300, 350, 400, 250, 200]
# --- Projeto B: retorno concentrado no final ---
fluxos_B = [-1000, 50, 50, 50, 50, 1500]

taxa_mercado = 0.10
vpl_A = vpl(fluxos_A, taxa_mercado)
vpl_B = vpl(fluxos_B, taxa_mercado)
tir_A = tir(fluxos_A)
tir_B = tir(fluxos_B)

print("=== Análise de Projetos de Investimento ===")
print(f"\n  Projeto A: {fluxos_A}")
print(f"    VPL (r={taxa_mercado*100:.0f}%) = R${vpl_A:.2f}")
print(f"    TIR = {tir_A*100:.2f}%")
print(f"\n  Projeto B: {fluxos_B}")
print(f"    VPL (r={taxa_mercado*100:.0f}%) = R${vpl_B:.2f}")
print(f"    TIR = {tir_B*100:.2f}%")

decisao = "A" if vpl_A > vpl_B else "B"
print(f"\n  Pelo critério VPL: escolher Projeto {decisao}")

# --- Perfil de VPL ---
taxas = np.linspace(0, 0.5, 200)
vpl_A_perfil = [vpl(fluxos_A, r) for r in taxas]
vpl_B_perfil = [vpl(fluxos_B, r) for r in taxas]

fig, ax = plt.subplots()
ax.plot(taxas * 100, vpl_A_perfil, "b-", linewidth=2, label="Projeto A")
ax.plot(taxas * 100, vpl_B_perfil, "r-", linewidth=2, label="Projeto B")
ax.axhline(0, color="gray", ls="--")
ax.axvline(tir_A * 100, color="blue", ls=":", alpha=0.5, label=f"TIR_A = {tir_A*100:.1f}%")
ax.axvline(tir_B * 100, color="red", ls=":", alpha=0.5, label=f"TIR_B = {tir_B*100:.1f}%")
ax.set_xlabel("Taxa de desconto (%)")
ax.set_ylabel("VPL (R$)")
ax.set_title("Perfil de VPL dos Projetos")
ax.legend(); plt.show()

print("\nAtenção: VPL e TIR podem dar sinais conflitantes quando os projetos")
print("se cruzam. Sempre prefira o critério VPL para projetos mutuamente excludentes.")

# %% [markdown]
# ## 4. Regra de Hotelling — Preço de Recursos Esgotáveis (Cap. 18)
# O preço líquido de um recurso esgotável cresce à taxa de juros.

# %%
# Parâmetros
P0 = 50         # preço líquido inicial (preço - custo de extração)
r_hot = 0.05    # taxa de juros
T_hot = 50      # horizonte

t_range = np.arange(0, T_hot + 1)
P_hotelling = P0 * np.exp(r_hot * t_range)  # versão contínua
P_hotelling_disc = P0 * (1 + r_hot)**t_range  # versão discreta

# Demanda: Q(P) = A * P^(-epsilon)
A_hot = 1000
epsilon_hot = 1.5
Q_hotelling = A_hot * P_hotelling**(-epsilon_hot)

# Estoque finito
estoque_total = 500
extracoes_acum = np.cumsum(Q_hotelling)
t_esgota = np.searchsorted(extracoes_acum, estoque_total)

print("=== Regra de Hotelling ===")
print(f"  Preço líquido inicial: R${P0}")
print(f"  Taxa de juros: {r_hot*100:.1f}%")
print(f"  Regra: preço líquido cresce a {r_hot*100:.1f}% ao ano")
print(f"  Estoque total: {estoque_total} unidades")
print(f"  Esgotamento em t ≈ {t_esgota} anos")

fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(14, 5))

ax1.plot(t_range, P_hotelling, "b-", linewidth=2, label="Preço líquido")
ax1.axvline(t_esgota, color="red", ls="--", label=f"Esgotamento (t={t_esgota})")
ax1.set_xlabel("Tempo (anos)"); ax1.set_ylabel("Preço líquido (R$)")
ax1.set_title("Trajetória de Preço — Regra de Hotelling")
ax1.legend()

ax2.plot(t_range[:t_esgota+5], Q_hotelling[:t_esgota+5], "g-", linewidth=2, label="Extração")
ax2.fill_between(t_range[:t_esgota], Q_hotelling[:t_esgota], alpha=0.2, color="green")
ax2.axvline(t_esgota, color="red", ls="--", label=f"Esgotamento")
ax2.set_xlabel("Tempo (anos)"); ax2.set_ylabel("Quantidade extraída")
ax2.set_title("Extração ao Longo do Tempo")
ax2.legend()

plt.tight_layout(); plt.show()

# %% [markdown]
# ## 5. Comparação de Taxas de Desconto e Decisão Intertemporal (Cap. 18)
# Como a taxa de desconto afeta a escolha entre consumo presente e futuro.

# %%
# Modelo de dois períodos: max u(c1) + delta*u(c2) s.a. c1 + c2/(1+r) = Y1 + Y2/(1+r)
Y1, Y2 = 100, 100  # renda em cada período
r_intertemporal = 0.10

def consumo_otimo(Y1, Y2, r, delta):
    """
    Para u(c) = ln(c):
    c1* = (Y1 + Y2/(1+r)) / (1 + delta)
    c2* = delta * (1+r) * c1*
    """
    riqueza = Y1 + Y2 / (1 + r)
    c1 = riqueza / (1 + delta)
    c2 = delta * (1 + r) * c1
    return c1, c2

deltas = [0.7, 0.85, 0.95, 1.0]
print("=== Escolha Intertemporal (r = 10%) ===")
print(f"{'δ':>6} {'c1':>10} {'c2':>10} {'Poupança':>12}")
print("-" * 40)

fig, ax = plt.subplots()
c1_range = np.linspace(1, 200, 200)

# Restrição orçamentária intertemporal
c2_budget = (Y1 + Y2 / (1 + r_intertemporal) - c1_range) * (1 + r_intertemporal)
ax.plot(c1_range[c2_budget >= 0], c2_budget[c2_budget >= 0], "k-", linewidth=2,
        label="Restrição orçamentária")

cores = ["blue", "green", "orange", "red"]
for delta, cor in zip(deltas, cores):
    c1_opt, c2_opt = consumo_otimo(Y1, Y2, r_intertemporal, delta)
    poupanca = Y1 - c1_opt
    print(f"{delta:>6.2f} {c1_opt:>10.2f} {c2_opt:>10.2f} {poupanca:>12.2f}")

    # Curva de indiferença
    u_opt = np.log(c1_opt) + delta * np.log(c2_opt)
    c2_indif = np.exp((u_opt - np.log(c1_range)) / delta)
    ax.plot(c1_range, c2_indif, "--", color=cor, alpha=0.6)
    ax.plot(c1_opt, c2_opt, "o", color=cor, markersize=10, label=f"δ={delta}")

ax.set_xlim(0, 200); ax.set_ylim(0, 250)
ax.set_xlabel("Consumo período 1 ($c_1$)")
ax.set_ylabel("Consumo período 2 ($c_2$)")
ax.set_title("Escolha Intertemporal para Diferentes Taxas de Desconto")
ax.legend(fontsize=10); plt.show()

print("\nQuanto mais paciente (δ → 1), mais o agente poupa e consome no futuro.")

# %% [markdown]
# ## Exercícios
# - Adicione um imposto sobre salário de 30%. Como a oferta de trabalho muda para cada σ?
# - Construa um projeto com dois TIR (fluxos que mudam de sinal duas vezes). O VPL resolve a ambiguidade?
# - Na regra de Hotelling, dobre a taxa de juros. O recurso se esgota mais rápido ou mais devagar?
# - Simule a escolha intertemporal com 10 períodos e renda crescente. Quando a poupança é máxima?

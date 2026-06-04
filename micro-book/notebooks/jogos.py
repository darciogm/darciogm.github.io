"""
Microeconomia — Caderno 3: Teoria dos Jogos
Capítulos 9a-9d

Execute: python jogos.py
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
# ## 1. Equilíbrio de Nash em Jogos 2×2 (Cap. 9a)
# Encontrar equilíbrios de Nash em estratégias puras e mistas.

# %%
def encontrar_nash_puro(A, B):
    """
    Encontra equilíbrios de Nash em estratégias puras para um jogo 2×2.
    A: matriz de payoffs do jogador 1 (linhas)
    B: matriz de payoffs do jogador 2 (colunas)
    Retorna lista de perfis (i, j) que são Nash.
    """
    nrows, ncols = A.shape
    nash = []
    for i in range(nrows):
        for j in range(ncols):
            # i é melhor resposta para j?
            melhor_resp_1 = A[i, j] >= max(A[k, j] for k in range(nrows))
            # j é melhor resposta para i?
            melhor_resp_2 = B[i, j] >= max(B[i, k] for k in range(ncols))
            if melhor_resp_1 and melhor_resp_2:
                nash.append((i, j))
    return nash

def nash_misto_2x2(A, B):
    """
    Calcula equilíbrio em estratégias mistas para um jogo 2×2.
    Jogador 2 mistura para tornar jogador 1 indiferente, e vice-versa.
    """
    # Jogador 2 joga coluna 0 com prob q
    # J1 indiferente: A[0,0]*q + A[0,1]*(1-q) = A[1,0]*q + A[1,1]*(1-q)
    denom_q = (A[0, 0] - A[0, 1] - A[1, 0] + A[1, 1])
    q = (A[1, 1] - A[0, 1]) / denom_q if denom_q != 0 else None

    # Jogador 1 joga linha 0 com prob p
    denom_p = (B[0, 0] - B[0, 1] - B[1, 0] + B[1, 1])
    p = (B[1, 1] - B[0, 1]) / denom_p if denom_p != 0 else None

    return p, q

# --- Dilema dos Prisioneiros ---
print("=== Dilema dos Prisioneiros ===")
print("         Cooperar  Delatar")
A_dp = np.array([[-1, -3],   # payoffs jogador 1
                 [ 0, -2]])
B_dp = np.array([[-1,  0],   # payoffs jogador 2
                 [-3, -2]])
estrategias = ["Cooperar", "Delatar"]
nash_puros = encontrar_nash_puro(A_dp, B_dp)
for (i, j) in nash_puros:
    print(f"  Nash puro: ({estrategias[i]}, {estrategias[j]}) → payoffs ({A_dp[i,j]}, {B_dp[i,j]})")

# --- Batalha dos Sexos ---
print("\n=== Batalha dos Sexos ===")
A_bs = np.array([[3, 0],
                 [0, 2]])
B_bs = np.array([[2, 0],
                 [0, 3]])
estrategias_bs = ["Futebol", "Cinema"]
nash_puros_bs = encontrar_nash_puro(A_bs, B_bs)
for (i, j) in nash_puros_bs:
    print(f"  Nash puro: ({estrategias_bs[i]}, {estrategias_bs[j]}) → ({A_bs[i,j]}, {B_bs[i,j]})")

p_misto, q_misto = nash_misto_2x2(A_bs, B_bs)
print(f"  Nash misto: J1 joga Futebol com p = {p_misto:.2f}, J2 joga Futebol com q = {q_misto:.2f}")

# %% [markdown]
# ## 2. Melhor Resposta e Cournot (Cap. 9a / 16)
# Duopólio de Cournot: convergência por iteração de melhor resposta.

# %%
# Demanda: P = a - b*(q1 + q2); Custo: C(q) = c*q
a_c, b_c, c_c = 100, 1, 10

def melhor_resposta_cournot(q_rival, a=a_c, b=b_c, c=c_c):
    """BR(q_j) = (a - c - b*q_j) / (2b)"""
    return max(0, (a - c - b * q_rival) / (2 * b))

# Nash analítico
q_nash = (a_c - c_c) / (3 * b_c)
print(f"=== Cournot Duopólio (a={a_c}, b={b_c}, c={c_c}) ===")
print(f"  Nash: q1* = q2* = {q_nash:.2f}")
print(f"  Preço: P* = {a_c - b_c * 2 * q_nash:.2f}")
print(f"  Lucro de cada: π = {(a_c - b_c * 2 * q_nash - c_c) * q_nash:.2f}")

# --- Iteração de melhor resposta ---
q1, q2 = 0, 0  # chute inicial
historico = [(q1, q2)]
for _ in range(15):
    q1 = melhor_resposta_cournot(q2)
    q2 = melhor_resposta_cournot(q1)
    historico.append((q1, q2))

hist = np.array(historico)

# --- Gráfico: funções de melhor resposta ---
q_range = np.linspace(0, 100, 200)
br1 = [melhor_resposta_cournot(q) for q in q_range]
br2 = [melhor_resposta_cournot(q) for q in q_range]

fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(14, 6))

ax1.plot(q_range, br1, "b-", linewidth=2, label="$BR_1(q_2)$")
ax1.plot(br2, q_range, "r-", linewidth=2, label="$BR_2(q_1)$")
ax1.plot(q_nash, q_nash, "ko", markersize=10, zorder=5, label="Nash")
# Trajetória de convergência
ax1.plot(hist[:, 0], hist[:, 1], "g--o", markersize=4, alpha=0.6, label="Convergência")
ax1.set_xlabel("$q_1$"); ax1.set_ylabel("$q_2$")
ax1.set_title("Funções de Melhor Resposta — Cournot")
ax1.legend()

# Convergência ao longo do tempo
ax2.plot(hist[:, 0], "b-o", label="$q_1$")
ax2.plot(hist[:, 1], "r-s", label="$q_2$")
ax2.axhline(q_nash, color="gray", ls="--", label="Nash")
ax2.set_xlabel("Iteração"); ax2.set_ylabel("Quantidade")
ax2.set_title("Convergência para o Nash")
ax2.legend()

plt.tight_layout(); plt.show()

# %% [markdown]
# ## 3. Simulação de Leilão de Primeiro Preço (Cap. 9c)
# Monte Carlo: lances ótimos com valores uniformes em [0, 1].

# %%
np.random.seed(42)
n_licitantes = 5
n_leiloes = 50_000

# Valores privados ~ Uniforme[0,1]
valores = np.random.rand(n_leiloes, n_licitantes)

# Estratégia de equilíbrio (simétrico, n jogadores): b(v) = v * (n-1)/n
fator_shading = (n_licitantes - 1) / n_licitantes
lances = valores * fator_shading

# Quem ganha? Maior lance
vencedor_idx = np.argmax(lances, axis=1)
lance_vencedor = np.max(lances, axis=1)
valor_vencedor = valores[np.arange(n_leiloes), vencedor_idx]
lucro_vencedor = valor_vencedor - lance_vencedor

print(f"=== Leilão de 1º Preço — {n_licitantes} licitantes ===")
print(f"  Estratégia de equilíbrio: b(v) = {fator_shading:.2f} × v")
print(f"  Lance médio do vencedor:  {lance_vencedor.mean():.4f}")
print(f"  Valor médio do vencedor:  {valor_vencedor.mean():.4f}")
print(f"  Lucro médio do vencedor:  {lucro_vencedor.mean():.4f}")
print(f"  Receita esperada do leiloeiro: {lance_vencedor.mean():.4f}")
print(f"  (Teórico: (n-1)/(n+1) = {(n_licitantes-1)/(n_licitantes+1):.4f})")

fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(14, 5))

ax1.hist(lance_vencedor, bins=60, density=True, alpha=0.7, color="steelblue", edgecolor="white")
ax1.set_xlabel("Lance vencedor"); ax1.set_ylabel("Densidade")
ax1.set_title(f"Distribuição do Lance Vencedor (n={n_licitantes})")

ax2.hist(lucro_vencedor, bins=60, density=True, alpha=0.7, color="coral", edgecolor="white")
ax2.set_xlabel("Lucro do vencedor"); ax2.set_ylabel("Densidade")
ax2.set_title("Distribuição do Lucro do Vencedor")

plt.tight_layout(); plt.show()

# %% [markdown]
# ## 4. Dilema dos Prisioneiros Repetido — Estratégias (Cap. 9b)
# Simulação: Tit-for-Tat vs. Always Defect vs. Grim Trigger.

# %%
def jogar_pd_repetido(estrategia1, estrategia2, T=100):
    """
    Simula PD repetido por T rodadas.
    Ações: 0 = Cooperar, 1 = Delatar
    Payoffs: (C,C)=3, (C,D)=0, (D,C)=5, (D,D)=1
    """
    payoff_matrix = {(0,0): (3,3), (0,1): (0,5), (1,0): (5,0), (1,1): (1,1)}
    hist1, hist2 = [], []
    payoffs1, payoffs2 = [], []

    for t in range(T):
        a1 = estrategia1(hist1, hist2, t)
        a2 = estrategia2(hist2, hist1, t)
        p1, p2 = payoff_matrix[(a1, a2)]
        hist1.append(a1); hist2.append(a2)
        payoffs1.append(p1); payoffs2.append(p2)

    return np.array(payoffs1), np.array(payoffs2)

# Estratégias
def always_cooperate(minha_hist, rival_hist, t):
    return 0

def always_defect(minha_hist, rival_hist, t):
    return 1

def tit_for_tat(minha_hist, rival_hist, t):
    return 0 if t == 0 else rival_hist[-1]

def grim_trigger(minha_hist, rival_hist, t):
    if t == 0:
        return 0
    return 1 if 1 in rival_hist else 0

T = 50
estrategias = {
    "Always Cooperate": always_cooperate,
    "Always Defect": always_defect,
    "Tit-for-Tat": tit_for_tat,
    "Grim Trigger": grim_trigger,
}

# Torneio: cada par joga
nomes = list(estrategias.keys())
n_est = len(nomes)
pontuacao = {nome: 0 for nome in nomes}

print(f"=== Torneio PD Repetido ({T} rodadas) ===")
print(f"{'Jogador 1':<20} {'Jogador 2':<20} {'Total J1':>10} {'Total J2':>10}")
print("-" * 64)

for i in range(n_est):
    for j in range(i, n_est):
        p1, p2 = jogar_pd_repetido(estrategias[nomes[i]], estrategias[nomes[j]], T)
        pontuacao[nomes[i]] += p1.sum()
        pontuacao[nomes[j]] += p2.sum()
        print(f"{nomes[i]:<20} {nomes[j]:<20} {p1.sum():>10} {p2.sum():>10}")

print(f"\n{'Estratégia':<20} {'Pontuação Total':>15}")
print("-" * 37)
for nome in sorted(pontuacao, key=pontuacao.get, reverse=True):
    print(f"{nome:<20} {pontuacao[nome]:>15}")

# --- Gráfico: TFT vs Always Defect ao longo do tempo ---
p_tft, p_ad = jogar_pd_repetido(tit_for_tat, always_defect, T)

fig, ax = plt.subplots()
ax.plot(np.cumsum(p_tft), "b-", label="Tit-for-Tat")
ax.plot(np.cumsum(p_ad), "r-", label="Always Defect")
ax.set_xlabel("Rodada"); ax.set_ylabel("Payoff acumulado")
ax.set_title("PD Repetido: Tit-for-Tat vs. Always Defect")
ax.legend(); plt.show()

# %% [markdown]
# ## Exercícios
# - Adicione a estratégia "Generous TFT" (coopera com 10% de chance após delação rival). Como se sai?
# - Aumente n no leilão para 20. O que acontece com o lucro do vencedor? (Winner's curse?)
# - Monte um jogo 2×2 sem Nash em estratégias puras. Calcule o Nash misto.

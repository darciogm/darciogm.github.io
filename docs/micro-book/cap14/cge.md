# 14.11 Do Quadro-Negro ao Gabinete: Modelos CGE

!!! info "Seção avançada"
    Esta seção é material complementar. Pode ser omitida sem perda de continuidade no restante do livro. Recomendada para: pós-graduação, economistas aplicados, pesquisadores que usam CGE.

## 14.11 Do Quadro-Negro ao Gabinete: Modelos CGE {#1411}

Tudo o que vimos até aqui neste capítulo — Caixa de Edgeworth, Teoremas do Bem-Estar, prova de existência — pertence ao domínio da teoria pura. São resultados fundamentais, mas nenhum deles, isoladamente, diz a um ministro da Fazenda quanto uma reforma tributária vai afetar o emprego no setor têxtil. Para isso, precisamos de **modelos computáveis de equilíbrio geral** (CGE, na sigla em inglês), que traduzem a estrutura teórica walrasiana em sistemas numéricos calibrados com dados reais e resolvidos por computador.[^ministry-cge-bis]

### O que é um modelo CGE

Um modelo CGE é uma implementação numérica da teoria de equilíbrio geral. Ele especifica:

1. **Funções de utilidade** para cada tipo de consumidor (geralmente CES ou Cobb-Douglas aninhadas);
2. **Funções de produção** para cada setor (CES, Leontief, Cobb-Douglas ou combinações);
3. **Dotações de fatores** (trabalho, capital, terra, recursos naturais);
4. **Estrutura tributária e de gastos do governo**;
5. **Relações de comércio exterior** (funções de Armington para diferenciação por origem).

O modelo é **calibrado** — não estimado econometricamente. Isso significa que os parâmetros são escolhidos para que o modelo reproduza exatamente uma **Matriz de Contabilidade Social (SAM)** observada no ano-base. A SAM é como uma fotografia contábil da economia: registra todos os fluxos de bens, serviços, fatores e transferências entre setores, famílias, governo e resto do mundo.

### Como funciona na prática

O fluxo de trabalho típico de um modelo CGE é:

1. **Construir a SAM** a partir de dados das Contas Nacionais, pesquisas domiciliares (PNAD/POF no Brasil) e dados de comércio exterior;
2. **Calibrar** o modelo: dados os parâmetros, o equilíbrio do ano-base é reproduzido exatamente;
3. **Chocar** o modelo: introduzir uma mudança de política (redução de tarifa, reforma tributária, choque de produtividade) e resolver o novo equilíbrio;
4. **Comparar** os resultados: o "contrafactual" (com a política) versus o "benchmark" (sem a política).

Os resultados típicos incluem: mudanças nos preços relativos, realocação de fatores entre setores, variação do PIB, efeitos distributivos (quem ganha, quem perde), e medidas de bem-estar (variação equivalente ou compensatória).

### Limitações e precauções

Como qualquer modelo, os CGEs fazem simplificações importantes:

- **Concorrência perfeita** é a hipótese padrão (embora extensões com markup existam);
- **Pleno emprego** de fatores — o ajuste é via preços, não via quantidades de desemprego;
- **Expectativas estáticas** — a maioria dos modelos é de estática comparativa, sem dinâmica intertemporal completa;
- **Sensibilidade a elasticidades** — os resultados podem mudar substancialmente com diferentes elasticidades de substituição.

Apesar dessas limitações, os modelos CGE são a ferramenta padrão para avaliação *ex ante* de políticas comerciais e tributárias. A alternativa — análise de equilíbrio parcial ou pura intuição — é quase sempre pior.

!!! box-brasil "Modelos CGE e Políticas Públicas no Brasil"
    O Brasil possui uma tradição ativa de modelagem CGE aplicada. Alguns exemplos notáveis:

    - **TERM-BR** (The Enormous Regional Model — Brasil): desenvolvido por pesquisadores da USP e FGV, desagrega a economia brasileira em 27 estados e dezenas de setores. Foi utilizado para avaliar os impactos regionais da reforma tributária (IBS+CBS), estimando que estados importadores líquidos de bens se beneficiariam da transição do princípio de origem para o de destino.
    - **BeGreen**: modelo multi-regional multi-setorial do Cedeplar/UFMG, utilizado para analisar os efeitos econômicos de políticas ambientais — como metas de redução de desmatamento e precificação de carbono.
    - **GTAP** (Global Trade Analysis Project): modelo global calibrado pela Purdue University, amplamente utilizado para simular os efeitos de acordos comerciais — incluindo o Mercosul-UE. Estudos com GTAP estimam ganhos modestos para o PIB brasileiro (0,1–0,5%), mas impactos significativos na composição setorial: expansão do agronegócio e contração de segmentos industriais menos competitivos.
    - **Modelos do IPEA**: o Instituto de Pesquisa Econômica Aplicada desenvolve e aplica modelos CGE para avaliar políticas redistributivas, como o Bolsa Família e a reforma da Previdência.

    **Dados brasileiros para CGE:** As Contas Nacionais do IBGE (Tabelas de Recursos e Usos — TRU) são a base para a construção de SAMs brasileiras. A Matriz Insumo-Produto, derivada das TRU, detalha as relações intersetoriais que alimentam os modelos.

[^ministry-cge-bis]: Cada modelo CGE tem suas idiossincrasias — funções de produção aninhadas com quatro níveis de CES, regras de fechamento que dariam inveja a um regulamento fiscal, calibrações que dependem de SAMs com idade legal para votar. Mas os resultados são surpreendentemente úteis quando interpretados com o devido ceticismo: o ponto é o sinal e a magnitude, não a terceira casa decimal.

---

!!! lab "Mini-Lab Computacional — Um CGE 2×2×2 em Python"

    **Objetivo:** Construir e resolver um modelo CGE mínimo — 2 bens, 2 fatores, 2 consumidores — em Python puro. O aluno implementa o tâtonnement walrasiano, calibra o modelo com uma SAM simples e simula um choque de política (imposto sobre o bem 1).

    **Pré-requisitos:** Python 3, NumPy, Matplotlib. Nenhum pacote de otimização especializado é necessário.

    **Tempo estimado:** 60–90 minutos.

    ---

    **Parte 1 — A economia**

    Considere uma economia com:

    - **2 bens**: Alimentos (bem 1) e Manufaturas (bem 2).
    - **2 fatores**: Trabalho ($L$) e Capital ($K$), com dotações fixas $\bar{L} = 100$ e $\bar{K} = 100$.
    - **2 consumidores**: Trabalhador (possui todo o trabalho) e Capitalista (possui todo o capital).

    Funções de produção Cobb-Douglas:

    \[
    Y_1 = A_1 L_1^{\alpha_1} K_1^{1-\alpha_1}, \qquad Y_2 = A_2 L_2^{\alpha_2} K_2^{1-\alpha_2}
    \]

    com $A_1 = A_2 = 1$, $\alpha_1 = 0{,}6$ (alimentos são trabalho-intensivos), $\alpha_2 = 0{,}3$ (manufaturas são capital-intensivas).

    Utilidade Cobb-Douglas idêntica para ambos os consumidores:

    \[
    U_i = x_{i1}^{0{,}5} \cdot x_{i2}^{0{,}5}
    \]

    ---

    **Parte 2 — Código Python**

    ```python
    import numpy as np
    import matplotlib.pyplot as plt

    # ── Parâmetros ──────────────────────────────────────────
    alpha1, alpha2 = 0.6, 0.3          # intensidade-trabalho nos setores
    beta = 0.5                          # share do bem 1 na utilidade
    L_bar, K_bar = 100.0, 100.0        # dotações totais de fatores

    # ── Numerário: p2 = 1 ─────────────────────────────────
    p2 = 1.0

    def solve_equilibrium(p1, tau=0.0):
        """
        Dado p1 (preço do bem 1) e tau (imposto ad valorem sobre bem 1),
        resolve a alocação de fatores, produção e demanda.
        Retorna o excesso de demanda no mercado do bem 1.
        """
        # Preço ao produtor do bem 1 (consumidor paga p1, produtor recebe p1/(1+tau))
        p1_prod = p1 / (1 + tau)

        # ── Alocação de fatores (CPO das firmas) ──
        # CMg_fator = preço do fator / PMg_fator
        # Em equilíbrio: w/PMgL1 = w/PMgL2 e r/PMgK1 = r/PMgK2
        # Com Cobb-Douglas: w = alpha_j * p_j * Y_j / L_j, r = (1-alpha_j)*p_j*Y_j/K_j
        # Usando a condição w/r = (alpha_j/(1-alpha_j)) * (K_j/L_j):
        # K_j/L_j = (w/r) * (1-alpha_j)/alpha_j

        # Iterar para encontrar w/r consistente
        # Com CD: share do trabalho na renda do setor j = alpha_j
        # Renda total do trabalho = alpha1*p1_prod*Y1 + alpha2*p2*Y2 = w*L_bar
        # Renda total do capital = (1-alpha1)*p1_prod*Y1 + (1-alpha2)*p2*Y2 = r*K_bar

        # Mais simples: usar que L_j/K_j depende de w/r
        # L1 + L2 = L_bar,  K1 + K2 = K_bar
        # K_j = L_j * (1-alpha_j)/alpha_j * (w/r)^(-1)
        # Precisamos resolver para w/r

        from scipy.optimize import brentq

        def factor_market(omega):
            """omega = w/r. Resolve alocação de fatores."""
            # Razão K/L em cada setor
            kl1 = (1 - alpha1) / alpha1 * omega
            kl2 = (1 - alpha2) / alpha2 * omega

            # De L1 + L2 = L_bar e K1 + K2 = K_bar:
            # K1 = kl1*L1, K2 = kl2*L2 = kl2*(L_bar - L1)
            # kl1*L1 + kl2*(L_bar - L1) = K_bar
            L1 = (K_bar - kl2 * L_bar) / (kl1 - kl2)

            if L1 < 0 or L1 > L_bar:
                return None

            L2 = L_bar - L1
            K1 = kl1 * L1
            K2 = kl2 * L2

            # Produção
            Y1 = L1**alpha1 * K1**(1 - alpha1)
            Y2 = L2**alpha2 * K2**(1 - alpha2)

            # Preços dos fatores
            w = alpha1 * p1_prod * Y1 / L1
            r = (1 - alpha1) * p1_prod * Y1 / K1

            return L1, L2, K1, K2, Y1, Y2, w, r

        def excess_demand_omega(omega):
            """Excesso de demanda por trabalho dado omega = w/r."""
            kl1 = (1 - alpha1) / alpha1 * omega
            kl2 = (1 - alpha2) / alpha2 * omega
            L1 = (K_bar - kl2 * L_bar) / (kl1 - kl2)
            L2 = L_bar - L1
            K1 = kl1 * L1
            K2 = K_bar - K1
            # Checagem: K1 + K2 deve = K_bar (identidade)
            # A condição de equilíbrio é que w/r seja consistente
            # entre os dois setores
            Y1 = L1**alpha1 * K1**(1 - alpha1)
            Y2 = L2**alpha2 * K2**(1 - alpha2)
            w1 = alpha1 * p1_prod * Y1 / L1 if L1 > 0 else 0
            r1 = (1 - alpha1) * p1_prod * Y1 / K1 if K1 > 0 else 0
            w2 = alpha2 * p2 * Y2 / L2 if L2 > 0 else 0
            r2 = (1 - alpha2) * p2 * Y2 / K2 if K2 > 0 else 0
            # Em equilíbrio: w1 = w2 e r1 = r2
            return (w1 - w2)

        # Encontrar omega de equilíbrio
        omega_eq = brentq(excess_demand_omega, 0.01, 100.0)
        res = factor_market(omega_eq)
        L1, L2, K1, K2, Y1, Y2, w, r = res

        # ── Demanda dos consumidores ──
        # Trabalhador: renda = w * L_bar
        # Capitalista: renda = r * K_bar
        # Receita do imposto: tau * p1_prod * (x_11 + x_21) — redistribuída igualmente

        income_L = w * L_bar
        income_K = r * K_bar
        tax_revenue = tau * p1_prod * Y1  # imposto sobre produção do bem 1

        # Redistribuição: metade para cada
        income_L_total = income_L + tax_revenue / 2
        income_K_total = income_K + tax_revenue / 2

        # Demandas (Cobb-Douglas com share beta):
        x_L1 = beta * income_L_total / p1
        x_L2 = (1 - beta) * income_L_total / p2
        x_K1 = beta * income_K_total / p1
        x_K2 = (1 - beta) * income_K_total / p2

        # Excesso de demanda no mercado do bem 1
        ED1 = (x_L1 + x_K1) - Y1

        return ED1, Y1, Y2, w, r, income_L_total, income_K_total

    # ── Encontrar preço de equilíbrio (sem imposto) ────────
    from scipy.optimize import brentq

    def ED1_of_p1(p1, tau=0.0):
        ed, *_ = solve_equilibrium(p1, tau)
        return ed

    p1_star = brentq(ED1_of_p1, 0.1, 10.0, args=(0.0,))
    _, Y1_0, Y2_0, w_0, r_0, inc_L_0, inc_K_0 = solve_equilibrium(p1_star, 0.0)

    print("═" * 50)
    print("EQUILÍBRIO SEM IMPOSTO (benchmark)")
    print("═" * 50)
    print(f"  p1/p2 = {p1_star:.4f}")
    print(f"  Y1 (Alimentos)    = {Y1_0:.2f}")
    print(f"  Y2 (Manufaturas)  = {Y2_0:.2f}")
    print(f"  w (salário)       = {w_0:.4f}")
    print(f"  r (remuneração K) = {r_0:.4f}")
    print(f"  Renda Trabalhador = {inc_L_0:.2f}")
    print(f"  Renda Capitalista = {inc_K_0:.2f}")

    # ── Choque: imposto de 20% sobre alimentos ────────────
    tau = 0.20
    p1_tax = brentq(ED1_of_p1, 0.1, 10.0, args=(tau,))
    _, Y1_t, Y2_t, w_t, r_t, inc_L_t, inc_K_t = solve_equilibrium(p1_tax, tau)

    print(f"\n{'═' * 50}")
    print(f"EQUILÍBRIO COM IMPOSTO (tau = {tau:.0%})")
    print("═" * 50)
    print(f"  p1/p2 = {p1_tax:.4f}")
    print(f"  Y1 (Alimentos)    = {Y1_t:.2f}  ({(Y1_t/Y1_0-1)*100:+.1f}%)")
    print(f"  Y2 (Manufaturas)  = {Y2_t:.2f}  ({(Y2_t/Y2_0-1)*100:+.1f}%)")
    print(f"  w (salário)       = {w_t:.4f}  ({(w_t/w_0-1)*100:+.1f}%)")
    print(f"  r (remuneração K) = {r_t:.4f}  ({(r_t/r_0-1)*100:+.1f}%)")
    print(f"  Renda Trabalhador = {inc_L_t:.2f}  ({(inc_L_t/inc_L_0-1)*100:+.1f}%)")
    print(f"  Renda Capitalista = {inc_K_t:.2f}  ({(inc_K_t/inc_K_0-1)*100:+.1f}%)")

    # ── Análise de sensibilidade: variando tau ─────────────
    taus = np.linspace(0, 0.5, 30)
    Y1s, Y2s, ws, rs = [], [], [], []

    for t in taus:
        p1_t = brentq(ED1_of_p1, 0.1, 10.0, args=(t,))
        _, y1, y2, w_i, r_i, _, _ = solve_equilibrium(p1_t, t)
        Y1s.append(y1)
        Y2s.append(y2)
        ws.append(w_i)
        rs.append(r_i)

    fig, axes = plt.subplots(1, 2, figsize=(12, 5))

    axes[0].plot(taus * 100, Y1s, 'b-', linewidth=2, label='Alimentos (Y₁)')
    axes[0].plot(taus * 100, Y2s, 'r--', linewidth=2, label='Manufaturas (Y₂)')
    axes[0].set_xlabel('Alíquota do imposto (%)')
    axes[0].set_ylabel('Produção')
    axes[0].set_title('Efeito do Imposto sobre a Produção Setorial')
    axes[0].legend()
    axes[0].grid(True, alpha=0.3)

    axes[1].plot(taus * 100, [w/r for w, r in zip(ws, rs)],
                 'g-', linewidth=2)
    axes[1].set_xlabel('Alíquota do imposto (%)')
    axes[1].set_ylabel('w/r (preço relativo dos fatores)')
    axes[1].set_title('Efeito sobre o Preço Relativo dos Fatores')
    axes[1].grid(True, alpha=0.3)

    plt.tight_layout()
    plt.savefig('cge_resultados.png', dpi=150, bbox_inches='tight')
    plt.show()

    print("\n✅ Gráfico salvo como cge_resultados.png")
    ```

    ---

    **Parte 3 — Perguntas para o relatório**

    1. **Stolper-Samuelson ao vivo:** O imposto sobre alimentos (setor trabalho-intensivo) beneficia trabalhadores ou capitalistas? Compare $w/r$ antes e depois do choque. O resultado é consistente com o Teorema de Stolper-Samuelson?

    2. **Sensibilidade:** Altere $\alpha_1 = 0{,}5$ e $\alpha_2 = 0{,}5$ (setores com mesma intensidade fatorial). O que acontece com o efeito distributivo do imposto? Por quê?

    3. **Equilíbrio parcial vs. geral:** Se você analisasse o imposto sobre alimentos usando apenas o mercado de alimentos (equilíbrio parcial), que efeitos *não* capturaria?

    4. **Lei de Walras:** Verifique numericamente que, para qualquer $p_1$ (fora do equilíbrio), $p_1 \cdot ED_1 + p_2 \cdot ED_2 = 0$. O que essa identidade garante sobre a resolução do modelo?

    5. **Extensão (opcional):** Adicione um terceiro setor (Serviços, com $\alpha_3 = 0{,}5$) e recalibre o modelo. O que muda nos efeitos distributivos do imposto?

    ---

    **Conexão com o capítulo:** Este exercício implementa numericamente os conceitos das Seções 14.8–14.11 — funções de excesso de demanda, Lei de Walras, tâtonnement, estática comparativa. O modelo é uma versão calibrável da economia 2×2×2 da Caixa de Edgeworth (Seção 14.2) com produção (Seção 14.10).

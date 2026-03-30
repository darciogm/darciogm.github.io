# Pré-Aula 14 — Lab: Isoquantas e Rendimentos de Escala (Prática)

!!! info "Leitura obrigatória"
    **Cap. 9, Seções 9.5–9.7** do livro interativo | Tempo estimado: **40 min**

## Objetivos de aprendizagem

Após estudar este material e antes de vir à aula, você deve ser capaz de:

1. Definir e calcular a elasticidade de substituição $\sigma$ para diferentes funções de produção
2. Explicar como o progresso técnico desloca isoquantas e suas implicações para a demanda de insumos
3. Preparar a "ficha técnica" de uma função de produção para o Jigsaw da próxima aula

---

## 1. Elasticidade de substituição $\sigma$

A TMST nos diz **a taxa** de substituição entre insumos. Mas quão **fácil** é substituir? A **elasticidade de substituição** $\sigma$ mede isso:

$$\sigma = \frac{d\ln(K/L)}{d\ln(\text{TMST})}$$

Em termos mais intuitivos:

> "Se a TMST muda 1%, em quanto (%) muda a razão capital/trabalho?"

$\sigma$ alto: fácil substituir (isoquantas mais "achatadas")

$\sigma$ baixo: difícil substituir (isoquantas mais "angulosas")

| Função | $\sigma$ | Interpretação |
|:---|:---|:---|
| **Linear** | $\infty$ | Substituição perfeita |
| **Cobb-Douglas** | $1$ | Substituição intermediária |
| **CES** | $\frac{1}{1-\rho}$ | Variável |
| **Leontief** | $0$ | Sem substituição |

---

## 2. A família CES como unificadora

A função **CES** (Constant Elasticity of Substitution) generaliza todas as funções clássicas:

$$f(L, K) = A\big[\alpha L^\rho + (1-\alpha) K^\rho\big]^{1/\rho}$$

onde $\rho \in (-\infty, 1]$ e $\sigma = \frac{1}{1-\rho}$.

| Limite | $\rho$ | $\sigma$ | Função |
|:---|:---|:---|:---|
| $\rho \to 1$ | 1 | $\infty$ | Linear |
| $\rho \to 0$ | 0 | 1 | Cobb-Douglas |
| $\rho \to -\infty$ | $-\infty$ | 0 | Leontief |

!!! example "Verificação: CES para $\\rho \\to 0$ gera Cobb-Douglas"
    Tome $\ln f = \frac{1}{\rho}\ln[\alpha L^\rho + (1-\alpha)K^\rho]$.

    Usando L'Hôpital quando $\rho \to 0$:

    $\ln f \to \alpha \ln L + (1-\alpha) \ln K + \ln A$

    $f \to A L^\alpha K^{1-\alpha}$

    Que é a Cobb-Douglas!

---

## 3. Progresso técnico

O progresso técnico permite produzir **mais com os mesmos insumos**. Graficamente, as isoquantas se deslocam **para a origem**.

Tipos de progresso técnico:

### 3.1 Progresso neutro de Hicks

$$f(L, K, t) = A(t) \cdot g(L, K)$$

Todas as isoquantas se contraem proporcionalmente. A TMST em qualquer ponto $(K/L)$ permanece inalterada.

### 3.2 Progresso poupador de trabalho (labor-saving)

$$f(L, K, t) = g(L, B(t) \cdot K)$$

O progresso torna o capital mais eficiente. As isoquantas se "achatam" — a firma precisa de relativamente menos trabalho.

### 3.3 Progresso poupador de capital (capital-saving)

$$f(L, K, t) = g(A(t) \cdot L, K)$$

O progresso torna o trabalho mais eficiente. As isoquantas se "inclinam" — a firma precisa de relativamente menos capital.

!!! note "Intuição Econômica"
    **Automação e a elasticidade de substituição**

    O debate sobre automação e emprego depende crucialmente de $\sigma$. Se $\sigma$ é alto (como na função linear), robôs substituem trabalhadores facilmente — e a automação pode reduzir dramaticamente o emprego. Se $\sigma$ é baixo (como na Leontief), homens e máquinas são complementares — mais robôs exigem mais trabalhadores qualificados para operá-los.

    Empiricamente, $\sigma$ varia entre setores: na manufatura, a automação avança rápido ($\sigma$ moderado a alto). Em serviços pessoais (saúde, educação), $\sigma$ é baixo — a tecnologia complementa, não substitui.

    Entender $\sigma$ é, portanto, essencial para prever o impacto da inteligência artificial no mercado de trabalho.

---

## Gráfico interativo: funções de produção

<div id="graph-production-functions" style="min-height: 450px;">
<iframe src="../../graficos/cap09/funcoes-producao.html" width="100%" height="450" frameborder="0" style="border: 1px solid #ddd; border-radius: 6px;"></iframe>
</div>

!!! tip "Explore o gráfico"
    - Varie o parâmetro $\rho$ e observe a transição entre Linear, Cobb-Douglas e Leontief
    - Compare como a razão $K/L$ muda ao longo da isoquanta para diferentes $\sigma$
    - Ative o progresso técnico e veja as isoquantas se deslocarem

---

## 4. Preparação para o Jigsaw: fichas técnicas

Na próxima aula, faremos um **Jigsaw** sobre funções de produção. Cada grupo será especialista em uma função e depois ensinará aos outros.

### Sua tarefa: preparar a "ficha técnica"

Para a função que lhe foi atribuída (veja no LMS), preencha:

| Item | O que calcular |
|:---|:---|
| 1. Forma funcional | Escrever $f(L, K)$ |
| 2. Produto marginal | $PMgL$ e $PMgK$ |
| 3. TMST | $f_L / f_K$ (simplificar) |
| 4. Rendimentos de escala | Calcular $f(tL, tK)$ vs. $t \cdot f(L,K)$ |
| 5. Elasticidade de substituição | Valor de $\sigma$ |
| 6. Formato das isoquantas | Desenho esquemático |
| 7. Exemplo real | Setor/indústria onde essa função se aplica |

!!! warning "Importante"
    Cada membro do grupo deve ter a ficha pronta **antes** da aula. No Jigsaw, você será o "especialista" que ensina sua função aos colegas de outros grupos.

---

## 5. Resumo comparativo

Para facilitar sua preparação, a tabela abaixo compara as quatro funções:

| Propriedade | Linear | Cobb-Douglas | CES ($\rho = -1$) | Leontief |
|:---|:---|:---|:---|:---|
| Forma | $aL + bK$ | $AL^a K^b$ | $A(\alpha L^{-1} + (1-\alpha)K^{-1})^{-1}$ | $\min\{aL, bK\}$ |
| $\sigma$ | $\infty$ | $1$ | $0{,}5$ | $0$ |
| Isoquantas | Retas | Hipérboles | Curvas suaves | Ângulos retos |
| Substituição | Perfeita | Parcial | Limitada | Impossível |
| Exemplo | Energia (gás vs. elétrica) | Manufatura geral | Indústria química | Montagem (parafusos + porcas) |

---

## Exercícios de preparação

**Exercício 1.** Para a função CES com $\rho = -1$, $\alpha = 0{,}5$ e $A = 1$: (a) escreva a função explicitamente; (b) calcule $f(4, 4)$ e $f(8, 8)$; (c) verifique os rendimentos de escala.

??? success "Solução"
    (a) $f(L,K) = (0{,}5 L^{-1} + 0{,}5 K^{-1})^{-1} = \frac{LK}{0{,}5K + 0{,}5L} = \frac{2LK}{L+K}$

    (b) $f(4,4) = \frac{2 \cdot 4 \cdot 4}{4 + 4} = \frac{32}{8} = 4$

    $f(8,8) = \frac{2 \cdot 8 \cdot 8}{8 + 8} = \frac{128}{16} = 8$

    (c) $f(8,8) = 8 = 2 \cdot f(4,4)$. Dobramos os insumos e a produção dobrou: **rendimentos constantes de escala**.

    Formalmente: $f(tL, tK) = \frac{2(tL)(tK)}{tL + tK} = t \cdot \frac{2LK}{L+K} = t \cdot f(L,K)$. Homogênea de grau 1.

**Exercício 2.** Calcule a elasticidade de substituição para $f(L,K) = L^{0{,}3}K^{0{,}7}$ e interprete.

??? success "Solução"
    A Cobb-Douglas sempre tem $\sigma = 1$.

    Verificação: $\text{TMST} = \frac{0{,}3 K}{0{,}7 L} = \frac{3K}{7L}$

    Seja $k = K/L$. Então $\text{TMST} = \frac{3k}{7}$, logo $k = \frac{7}{3}\text{TMST}$.

    $\sigma = \frac{d\ln k}{d\ln \text{TMST}} = 1$.

    Interpretação: uma mudança de 1% na TMST (= preço relativo dos insumos) gera exatamente 1% de mudança na razão $K/L$. A substituição é "unitária" — nem rígida demais, nem fácil demais.

**Exercício 3.** Classifique o tipo de progresso técnico: uma nova máquina permite que cada unidade de capital produza o equivalente a 1,5 unidade da máquina anterior, sem afetar a produtividade do trabalho.

??? success "Solução"
    A nova tecnologia aumenta a eficiência do capital: $K_{\text{efetivo}} = 1{,}5K$.

    $f(L, K, t) = g(L, 1{,}5K)$

    Isso é **progresso poupador de trabalho** (labor-saving), ou equivalentemente, **aumento da eficiência do capital** (capital-augmenting).

    A firma pode produzir o mesmo usando menos trabalho relativo ao capital. As isoquantas se "achatam" na direção do eixo $L$.

---

## Quiz Pré-Aula

!!! warning "Complete antes da aula"
    Responda no LMS até **2 horas antes** do início da aula.

<div class="quiz-container" style="background: #f8f9fa; padding: 1.5rem; border-radius: 8px; margin: 1rem 0;">

**Q1.** A elasticidade de substituição $\sigma$ mede:

- [ ] (a) A taxa na qual um insumo substitui outro
- [x] (b) A facilidade com que a firma substitui um insumo por outro
- [ ] (c) Os rendimentos de escala
- [ ] (d) O produto marginal

**Q2.** Para a função Cobb-Douglas, $\sigma$ é sempre igual a:

- [ ] (a) 0
- [x] (b) 1
- [ ] (c) $\infty$
- [ ] (d) Depende dos expoentes

**Q3.** Quando $\rho \to -\infty$ na CES, a função converge para:

- [ ] (a) Linear
- [ ] (b) Cobb-Douglas
- [x] (c) Leontief
- [ ] (d) Quadrática

**Q4.** O progresso técnico neutro de Hicks:

- [ ] (a) Altera a TMST
- [x] (b) Contrai as isoquantas proporcionalmente sem alterar a TMST
- [ ] (c) Beneficia apenas o fator trabalho
- [ ] (d) Reduz a produção

**Q5.** Se $\sigma$ é muito alto em um setor, a automação tende a:

- [x] (a) Substituir trabalho por capital com facilidade
- [ ] (b) Aumentar a demanda por trabalho
- [ ] (c) Não ter efeito sobre a razão $K/L$
- [ ] (d) Reduzir a eficiência do capital

</div>

---

!!! abstract "Próxima aula"
    **Aula 14**: Jigsaw sobre funções de produção — cada grupo apresenta a ficha técnica de sua função e depois ensina aos colegas. Traga sua ficha preenchida!

# Pré-Aula 10 — Decomposição de Hicks: Teoria

!!! info "Leitura obrigatória"
    **Cap. 5, Seções 5.4–5.6** do livro-texto | Tempo estimado: **~45 min**

## Objetivos de aprendizagem

Após estudar este material e antes de vir à aula, você deve ser capaz de:

1. Definir e calcular o excedente do consumidor (EC), a variação compensatória (VC) e a variação equivalente (VE).
2. Comparar as três medidas de bem-estar e identificar quando coincidem.
3. Explicar o princípio lump sum e por que impostos distorcivos geram perda de peso morto.

---

## 1. Excedente do Consumidor

O **excedente do consumidor** mede o ganho líquido do consumidor ao adquirir um bem a determinado preço de mercado. Geometricamente, corresponde à área entre a curva de demanda marshalliana e a linha de preço:

$$EC = \int_{0}^{x^*} p(x)\,dx - p^* x^*$$

onde $p(x)$ é a demanda inversa e $p^*$ o preço vigente. Para variações discretas de preço de $p_0$ para $p_1$:

$$\Delta EC = \int_{p_1}^{p_0} x^M(p, m)\,dp$$

!!! note "Intuição Econômica"
    O excedente do consumidor captura a diferença entre o que o consumidor **estaria disposto a pagar** e o que **efetivamente paga**. Quanto maior essa diferença, maior o ganho percebido na transação.

<iframe src="graficos/cap05/excedente-consumidor.html"></iframe>

!!! tip "Explore o gráfico"
    Deslize o preço para cima e para baixo e observe como a área sombreada do excedente do consumidor se altera. Note que a demanda marshalliana é usada nesta medida.

---

## 2. Variação Compensatória e Variação Equivalente

A decomposição de Hicks introduz duas medidas baseadas na demanda **hicksiana** (compensada):

- **Variação Compensatória (VC)**: renda que deve ser **retirada** do consumidor após a mudança de preço para que ele retorne ao nível de utilidade **original** $u_0$.

$$VC = e(p_1, u_0) - e(p_0, u_0) = e(p_1, u_0) - m$$

- **Variação Equivalente (VE)**: renda que deveria ser **dada** ao consumidor, aos preços **originais**, para que ele atinja o nível de utilidade **novo** $u_1$.

$$VE = e(p_0, u_1) - e(p_0, u_0) = m - e(p_0, u_1)$$

!!! note "Intuição Econômica"
    A VC pergunta: "quanto dinheiro compensa a mudança?". A VE pergunta: "quanto dinheiro equivale à mudança?". Ambas usam a demanda hicksiana, que isola o efeito substituição.

---

## 3. Relação entre EC, VC e VE

Para um bem **normal** com queda de preço ($p_1 < p_0$):

$$VC < \Delta EC < VE$$

No caso especial de preferências **quase-lineares** ($u = v(x_1) + x_2$), o efeito renda é nulo e as três medidas coincidem:

$$VC = \Delta EC = VE$$

Essa propriedade torna as preferências quase-lineares especialmente úteis em análise de políticas públicas.

---

## 4. O Princípio Lump Sum

Um **imposto lump sum** (montante fixo) arrecada a mesma receita que um imposto sobre consumo, porém sem distorcer as escolhas do consumidor. O imposto sobre consumo gera uma **perda de peso morto** (deadweight loss):

$$DWL = VC - R > 0$$

onde $R$ é a receita arrecadada pelo governo. A perda ocorre porque o imposto altera os preços relativos, induzindo substituição ineficiente.

<iframe src="graficos/cap04/lump-sum-principle.html"></iframe>

!!! tip "Explore o gráfico"
    Compare as restrições orçamentárias com imposto sobre o bem $x_1$ versus imposto lump sum de mesma receita. Observe que o consumidor atinge uma curva de indiferença mais alta com o imposto lump sum.

!!! note "Intuição Econômica"
    Impostos sobre quantidade distorcem preços relativos e geram substituição artificial. Impostos lump sum reduzem a renda sem alterar preços relativos — por isso são mais eficientes, embora menos usados na prática por questões distributivas.

---

## Exercícios Preparatórios

**Exercício 1.** Um consumidor possui demanda marshalliana $x(p, m) = \frac{m}{2p}$. Se a renda é $m = 100$ e o preço sobe de $p_0 = 5$ para $p_1 = 10$, calcule $\Delta EC$.

??? success "Solução"
    $$\Delta EC = \int_{5}^{10} \frac{100}{2p}\,dp = 50\left[\ln p\right]_{5}^{10} = 50\ln 2 \approx 34{,}66$$
    O consumidor perde aproximadamente R\$ 34,66 de excedente.

**Exercício 2.** Para preferências Cobb-Douglas $u = x_1^{0{,}5} x_2^{0{,}5}$ com $m = 200$, $p_2 = 1$ e aumento de $p_1$ de 1 para 4, calcule VC e VE.

??? success "Solução"
    A função dispêndio é $e(p_1, p_2, u) = 2u\sqrt{p_1 p_2}$. Com $p_2 = 1$:  
    $u_0 = \frac{200}{2\sqrt{1}} = 100$, logo $VC = 2(100)\sqrt{4} - 200 = 400 - 200 = 200$.  
    $u_1 = \frac{200}{2\sqrt{4}} = 50$, logo $VE = 200 - 2(50)\sqrt{1} = 200 - 100 = 100$.  
    Confirmamos $VC > VE$ para aumento de preço de bem normal.

**Exercício 3.** Explique por que o governo brasileiro prefere tributar consumo (ICMS, IPI) em vez de adotar impostos lump sum, apesar da ineficiência.

??? success "Solução"
    Impostos lump sum são regressivos: cobram o mesmo valor absoluto de ricos e pobres, o que fere o princípio da capacidade contributiva. Além disso, para calibrar um lump sum ideal seria necessário observar características individuais (renda potencial, preferências), o que gera problemas de informação assimétrica. Impostos sobre consumo permitem progressividade implícita (alíquotas maiores em bens de luxo) e são mais fáceis de administrar.

---

## Quiz Pré-Aula

!!! warning "Complete antes da aula"
    Responda no LMS até **2 horas antes** do início da aula.

<div class="quiz-container" style="background: #f8f9fa; padding: 1.5rem; border-radius: 8px; margin: 1rem 0;">

**Q1.** Qual medida de bem-estar utiliza a demanda marshalliana?

- [x] (a) Excedente do consumidor
- [ ] (b) Variação compensatória
- [ ] (c) Variação equivalente
- [ ] (d) Todas as anteriores

**Q2.** Se as preferências são quase-lineares, então:

- [ ] (a) $VC > \Delta EC > VE$
- [ ] (b) $VC < VE$
- [x] (c) $VC = \Delta EC = VE$
- [ ] (d) Não é possível calcular VC

**Q3.** A variação compensatória mede a renda necessária para retornar ao nível de utilidade:

- [x] (a) Original ($u_0$)
- [ ] (b) Novo ($u_1$)
- [ ] (c) Médio entre $u_0$ e $u_1$
- [ ] (d) Nenhuma das anteriores

**Q4.** A perda de peso morto de um imposto sobre consumo ocorre porque:

- [ ] (a) O governo arrecada menos
- [x] (b) O imposto distorce preços relativos, gerando substituição ineficiente
- [ ] (c) O consumidor deixa de consumir completamente
- [ ] (d) A demanda hicksiana se desloca

**Q5.** Para um bem normal com queda de preço, a ordem correta é:

- [ ] (a) $VE < EC < VC$
- [x] (b) $VC < \Delta EC < VE$
- [ ] (c) $VC = VE < \Delta EC$
- [ ] (d) $\Delta EC < VC < VE$

</div>

---

!!! abstract "Próxima aula"
    Na **Aula 11**, aplicaremos as medidas VC, VE e EC em exercícios práticos com preferências Cobb-Douglas e quase-lineares, incluindo um estudo de caso sobre tributação de eletricidade.

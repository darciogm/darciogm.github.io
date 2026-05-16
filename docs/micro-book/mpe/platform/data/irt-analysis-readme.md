# IRT 2-PL — análise externa rigorosa

> **Contexto:** o admin dashboard MPE tem um fit IRT 2-PL implementado em JS (`fitIRT2PL` em `platform/admin.html`), via joint MLE com alternating gradient ascent. Funciona como **explorador visual** (Wright map), mas **não computa fit indices** (RMSEA, item-fit χ², θ-SE) e não tem golden-test contra `mirt`/`pyirt`. Para análise rigorosa, exporte a matriz X via botão "📤 Exportar matriz X" no tab IRT/Wright e rode um dos scripts abaixo.

## Matriz X (CSV exportado)

Arquivo: `irt-matrix-<fase>-YYYY-MM-DD.csv`.

| matricula | nome | aula-01-pos::q1 | aula-01-pos::q2 | ... | aula-09-exerc::q5 |
|---|---|---|---|---|---|
| 24001 | Alice | 1 | 0 | ... | 1 |
| 24002 | Bruno | 0 | 1 | ... | (vazio) |
| ...   | ...   | ...| ...| ...| ...     |

- **Linhas:** alunos (matrícula + nome). Apenas alunos com ≥ 3 questões respondidas na fase.
- **Colunas:** questões `<page_id>::<question_id>`. Apenas questões com ≥ 3 respostas na fase.
- **Valores:** `1` = acertou em 1ª tentativa, `0` = errou em 1ª, vazio = não respondeu.
- **Filtro de fase:** controlado pelo dropdown no admin (`pre_review` / `post` / `graded_exercise` / todas).

## Script R com `mirt`

Pacote: [`mirt`](https://cran.r-project.org/package=mirt) (Chalmers 2012, *Journal of Statistical Software*). Instalação: `install.packages("mirt")`.

```r
library(mirt)
library(readr)
library(dplyr)

# 1) Carregar matriz X exportada do admin
df <- read_csv("irt-matrix-post-2026-06-15.csv")

# 2) Separar metadata vs itens
meta <- df %>% select(matricula, nome)
X    <- df %>% select(-matricula, -nome) %>% as.data.frame()

# 3) Fit 2-PL (estimativa por EM marginal likelihood)
fit2pl <- mirt(X, model = 1, itemtype = "2PL",
               method = "EM", technical = list(NCYCLES = 2000))

# 4) Parâmetros das questões: a (discriminação) e b (dificuldade)
coef2pl <- coef(fit2pl, simplify = TRUE, IRTpars = TRUE)$items
print(round(coef2pl, 3))

# 5) Fit indices globais
M2(fit2pl)            # M2 statistic + RMSEA + SRMSR + TLI + CFI
                      # Bom fit: RMSEA < 0.06, TLI/CFI > 0.95

# 6) Item-fit χ² (Orlando-Thissen S_X² ou Stone)
itemfit(fit2pl, fit_stats = "S_X2")   # S_X² + p-value por item
                                       # p > 0.05 = item bate com 2-PL

# 7) θ estimado por aluno + erro-padrão
theta <- fscores(fit2pl, full.scores.SE = TRUE)
theta_df <- bind_cols(meta, as.data.frame(theta))
colnames(theta_df)[3:4] <- c("theta", "se_theta")
print(head(theta_df))

# 8) Salvar para comparar com fit JS do admin
write_csv(theta_df, "theta-estimates-2026-06-15.csv")
write_csv(as.data.frame(coef2pl), "item-params-2026-06-15.csv")
```

## Script Python com `pyirt` ou `girth`

Opção A — [`pyirt`](https://github.com/17zuoye/pyirt): `pip install pyirt`. Marginal MLE simples.

```python
from pyirt import irt
import pandas as pd

df = pd.read_csv("irt-matrix-post-2026-06-15.csv")
meta = df[["matricula", "nome"]]
X = df.drop(columns=["matricula", "nome"])

# pyirt espera tuples (user, item, correct)
records = []
for i, row in X.iterrows():
    uid = meta.loc[i, "matricula"]
    for item, val in row.items():
        if pd.notna(val):
            records.append((uid, item, int(val)))

item_param, user_param = irt(records, theta_bnds=[-4, 4],
                             alpha_bnds=[0.25, 2], beta_bnds=[-4, 4],
                             max_iter=20, model_spec="2PL")
print(item_param)   # {item_id: {alpha, beta, c}}
print(user_param)   # {user_id: theta}
```

Opção B — [`girth`](https://eribean.github.io/girth/) (recomendada para rigor: implementa Joint MLE, EAP, MMLE; documenta math claramente).

```python
from girth import twopl_mml
import numpy as np
import pandas as pd

df = pd.read_csv("irt-matrix-post-2026-06-15.csv")
meta = df[["matricula", "nome"]]
X = df.drop(columns=["matricula", "nome"]).to_numpy()
# girth espera shape (n_items, n_persons); X é (n_persons, n_items) — transpor
X_t = X.T  # NaN para missing OK

result = twopl_mml(X_t)
print("Discrimination (a):", result["Discrimination"])
print("Difficulty (b):", result["Difficulty"])
print("AIC:", result.get("AIC"), "BIC:", result.get("BIC"))
```

## Comparar JS vs `mirt`/`girth`

Após rodar externamente, compare θ_aluno e (b, a)_item com o que o admin dashboard mostra:

1. **Correlação de θ:** Pearson entre theta do JS (visível no tooltip Wright map) e do `mirt`. Esperado > 0.95 se o joint MLE JS está bem implementado. < 0.85 = bug ou underfitting do JS.
2. **Ordenação de questões por b:** ranking deve bater ≥ 80% (Kendall τ > 0.6). Se diverge muito, o JS pode estar capturando outliers.
3. **Fit RMSEA do mirt:** se > 0.10, modelo 2-PL não cabe — considere 3-PL (guessing) ou Rasch.

Se a correlação θ for ≥ 0.95 e o RMSEA ≤ 0.06, o Wright map do admin pode ser **promovido de "exploratório" para "calibrado"** no semestre seguinte. Até lá, manter o aviso amarelo na UI.

## Quando rodar

- **Após Aula 5 (≥ ~150 respostas/fase):** primeira rodada possível com n suficiente.
- **Após Aula 9 (turma completa):** rodada final para relatório do semestre.
- **Entre semestres:** comparar parâmetros de mesma questão em turmas diferentes → estabilidade do banco.

## Não está no escopo

- **Diferenças por subgrupos (DIF):** requer covariáveis (gênero, área de origem) não rastreadas hoje.
- **3-PL com guessing:** assume múltipla escolha; nossos quizzes têm 4-5 alternativas, então `g = 1/k` é fixo, raramente justifica adicionar parâmetro.
- **Multidimensional IRT:** requer LO taxonomy (ainda não temos, ver backlog estratégico).

## Referências

- Chalmers, R. P. (2012). *mirt: A Multidimensional Item Response Theory Package for the R Environment*. Journal of Statistical Software, 48(6).
- Orlando, M., & Thissen, D. (2000). *Likelihood-based item-fit indices for dichotomous item response theory models*. Applied Psychological Measurement, 24, 50–64.
- Cai, L., & Hansen, M. (2013). *Limited-information goodness-of-fit testing of hierarchical item factor models*. British Journal of Mathematical and Statistical Psychology, 66(2), 245–276.

# Importação de Questões no Blackboard Ultra

## Visão Geral

Esta pasta contém **475 questões** prontas para importação no Blackboard Ultra:

| Tipo | Quantidade | Formato | Arquivo consolidado |
|------|-----------|---------|-------------------|
| **Múltipla escolha** (Revisão Rápida) | 135 | MC (4 alternativas) | `all_quiz_mc.txt` |
| **Verdadeiro/Falso** (ANPEC) | 340 | TF | `all_anpec_tf.txt` |
| **Total** | **475** | | |

## Organização dos Arquivos

### Pools por capítulo (para importação granular)
```
pool_cap01_quiz.txt     ← 5 questões MC do Cap. 1
pool_cap01_anpec.txt    ← V/F ANPEC do Cap. 1
pool_cap02_quiz.txt     ← 5 questões MC do Cap. 2
pool_cap02_anpec.txt    ← V/F ANPEC do Cap. 2
...
pool_cap24_quiz.txt     ← 5 questões MC do Cap. 24
```

### Arquivos consolidados (para importação completa)
```
all_quiz_mc.txt         ← Todas as 135 questões MC
all_anpec_tf.txt        ← Todos os 340 itens V/F
```

## Como Importar no Blackboard Ultra

### Passo 1: Acessar o Question Bank
1. No seu curso Blackboard Ultra, vá em **Conteúdo do Curso**
2. Clique no ícone **+** → **Question Bank** (Banco de Questões)
3. Ou acesse via: **Course Management** → **Question Banks**

### Passo 2: Importar Questões
1. No Question Bank, clique em **Import** (Importar)
2. Selecione **Upload File** (Carregar Arquivo)
3. Escolha o arquivo `.txt` desejado:
   - Para importar **todas** as MC: `all_quiz_mc.txt`
   - Para importar **todas** as V/F: `all_anpec_tf.txt`
   - Para importar **por capítulo**: selecione o `pool_capXX_*.txt` correspondente
4. O Blackboard reconhecerá automaticamente o formato tab-delimited
5. Confirme a importação

### Passo 3: Criar Avaliações
1. Vá em **Conteúdo do Curso** → **+** → **Test** (Avaliação)
2. Em **Add Questions** → **Reuse Questions** → selecione o Question Bank importado
3. Você pode:
   - Selecionar questões específicas manualmente
   - Usar **Random Block** para sortear N questões de um pool
   - Combinar pools de diferentes capítulos

## Formato Técnico

### Múltipla Escolha (MC)
```
MC	Texto da pergunta	Alternativa A	correct	Alternativa B	incorrect	Alternativa C	incorrect	Alternativa D	incorrect
```
- Campos separados por **TAB** (`\t`)
- Exatamente 4 alternativas por questão
- Uma alternativa marcada `correct`, três `incorrect`

### Verdadeiro/Falso (TF)
```
TF	Texto da afirmação	true
TF	Texto da afirmação	false
```
- Campos separados por **TAB**
- Valor: `true` ou `false`

## Sugestões de Uso

### Prova Rápida Semanal (10 min)
- Sortear 3 questões MC do capítulo da semana
- 1 ponto cada, sem penalidade por erro
- Liberação automática do gabarito após prazo

### Simulado Parcial (60 min)
- Combinar 10 MC + 15 V/F de 3-4 capítulos
- Peso: 2 pontos MC, 1 ponto V/F
- Embaralhar ordem das questões e alternativas

### Simulado ANPEC (90 min)
- Usar apenas o pool `all_anpec_tf.txt`
- Sortear 30 itens V/F (6 "questões" × 5 itens)
- Penalização: -1 por erro (simular ANPEC real)

## Resolução de Problemas

| Problema | Solução |
|----------|---------|
| Caracteres especiais corrompidos | Certifique-se de que o arquivo está em UTF-8. No Notepad++: Encoding → UTF-8. |
| Blackboard não reconhece o formato | Verifique que os separadores são TABs reais (não espaços). |
| Fórmulas matemáticas não renderizam | O Blackboard Ultra não suporta LaTeX nativamente. As fórmulas foram convertidas para texto plano. Para fórmulas renderizadas, use o editor de equações do Blackboard ao editar cada questão. |
| Questão importada sem resposta correta | Verifique se o arquivo não foi editado por software que alterou os TABs para espaços. |

## Regeneração

Se o conteúdo do livro for atualizado, regenere os arquivos executando:
```bash
cd docs/micro-book/recursos
python3 gerar_blackboard.py
```

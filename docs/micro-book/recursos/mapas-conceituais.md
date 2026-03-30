---
title: "Mapas Conceituais por Parte"
---

# Mapas Conceituais por Parte

*Mini-mapas para ajudar o aluno a situar-se dentro da progressao do livro.*

---

## Parte I — Fundamentos (Caps. 1-2)

```mermaid
graph LR
    A["Cap. 1<br>O Que e Micro?<br><i>Modelos, trade-offs,<br>pensamento marginal</i>"] --> B["Cap. 2<br>Matematica<br><i>Otimizacao, Lagrange,<br>envelope, TFI</i>"]
    B --> C["Parte II<br>Consumidor"]
    B --> D["Parte III<br>Firma"]
    B --> E["Parte IV<br>Jogos"]
    style A fill:#e8f4f8
    style B fill:#e8f4f8
```

**Ideia central:** A microeconomia e a ciencia das escolhas sob escassez. O Cap. 2 fornece a caixa de ferramentas matematicas usada em *todo* o restante do livro.

---

## Parte II — Consumidor (Caps. 3-8)

```mermaid
graph TD
    A["Cap. 3<br>Preferencias<br><i>Utilidade, axiomas,<br>curvas de indiferenca</i>"] --> B["Cap. 4<br>Escolha Otima<br><i>Restricao orcamentaria,<br>demanda marshalliana</i>"]
    B --> C["Cap. 5<br>Slutsky<br><i>Efeito renda,<br>efeito substituicao</i>"]
    C --> D["Cap. 6<br>Relacoes entre Bens<br><i>Substitutos, complementos,<br>bem composto</i>"]
    B --> E["Cap. 7<br>Incerteza<br><i>Utilidade esperada,<br>aversao ao risco</i>"]
    E --> F["Cap. 8<br>Comportamental<br><i>Prospect theory,<br>nudges, vieses</i>"]
    D --> G["Demanda de<br>mercado (Cap. 13)"]
    F --> H["Mecanismos (Cap. 9c-9d)<br>Contratos (Cap. 19)"]
    style A fill:#d4edda
    style B fill:#d4edda
    style C fill:#d4edda
    style D fill:#d4edda
    style E fill:#d4edda
    style F fill:#d4edda
```

**Ideia central:** Do "o que as pessoas querem" (preferencias) ao "o que as pessoas fazem" (demanda), passando por "e quando o preco muda?" (Slutsky) e "e quando as pessoas erram sistematicamente?" (comportamental).

---

## Parte III — Jogos (Caps. 9a-9d)

```mermaid
graph TD
    A["Cap. 9a<br>Nash<br><i>Jogos simultaneos,<br>equilibrio de Nash</i>"] --> B["Cap. 9b<br>Jogos Dinamicos<br><i>Inducao retroativa,<br>SPE, jogos repetidos</i>"]
    A --> C["Cap. 9c<br>Info. Incompleta<br><i>BNE, leiloes,<br>mecanismos</i>"]
    B --> D["Cap. 9d<br>Sinalizacao<br><i>PBE, sinalizacao,<br>screening</i>"]
    C --> D
    A --> E["Oligopolio<br>(Cap. 16a)"]
    B --> F["Colusao<br>(Cap. 16b)"]
    C --> G["Leiloes digitais<br>(Cap. 21)"]
    D --> H["Info. Assimetrica<br>(Cap. 19)"]
    style A fill:#fff3cd
    style B fill:#fff3cd
    style C fill:#fff3cd
    style D fill:#fff3cd
```

**Ideia central:** Quando sua escolha depende da escolha do outro. De Nash (todos decidem ao mesmo tempo) a sinalizacao (um sabe mais que o outro e tenta provar).

---

## Parte IV — Firma e Mercados (Caps. 10-16b)

```mermaid
graph TD
    A["Cap. 10<br>Producao<br><i>Funcao de producao,<br>isoquantas, TMST</i>"] --> B["Cap. 11<br>Custos<br><i>CT, CMg, CMe,<br>curto vs. longo prazo</i>"]
    B --> C["Cap. 12<br>Oferta<br><i>Maximizacao de lucro,<br>oferta competitiva</i>"]
    C --> D["Cap. 13<br>Equilibrio Parcial<br><i>Oferta + Demanda,<br>bem-estar, impostos</i>"]
    D --> E["Cap. 14<br>Equilibrio Geral<br><i>Edgeworth, Pareto,<br>TBE 1 e 2</i>"]
    C --> F["Cap. 15<br>Monopolio<br><i>Poder de mercado,<br>discriminacao, regulacao</i>"]
    F --> G["Cap. 16a<br>Oligopolio Basico<br><i>Bertrand, Cournot,<br>Stackelberg</i>"]
    G --> H["Cap. 16b<br>IO Avancada<br><i>Colusao, entrada,<br>fusoes, antitruste</i>"]
    style A fill:#f8d7da
    style B fill:#f8d7da
    style C fill:#f8d7da
    style D fill:#f8d7da
    style E fill:#f8d7da
    style F fill:#f8d7da
    style G fill:#f8d7da
    style H fill:#f8d7da
```

**Ideia central:** Do chao de fabrica (producao) ao tribunal do CADE (antitruste). O caminho passa por custos, lucro, equilibrio e poder de mercado.

---

## Parte V — Fatores e Tempo (Caps. 17-18)

```mermaid
graph LR
    A["Cap. 17<br>Trabalho<br><i>Oferta de trabalho,<br>salarios, capital humano</i>"] --> C["Mercado de<br>fatores completo"]
    B["Cap. 18<br>Capital e Tempo<br><i>VPL, Fisher, Hotelling,<br>recursos naturais</i>"] --> C
    style A fill:#e2d5f1
    style B fill:#e2d5f1
```

**Ideia central:** Os mercados de insumos — trabalho e capital — determinam a distribuicao da renda. O tempo transforma decisoes presentes em consequencias futuras.

---

## Parte VI — Fronteiras (Caps. 19-24)

```mermaid
graph TD
    A["Cap. 19<br>Info. Assimetrica<br><i>Selecao adversa,<br>risco moral, contratos</i>"] --> D["Cap. 23<br>Saude<br><i>Seguros, hospitais,<br>regulacao</i>"]
    B["Cap. 20<br>Externalidades<br><i>Coase, Pigou,<br>bens publicos</i>"] --> E["Cap. 24<br>Meio Ambiente<br><i>Valoracao, Nordhaus,<br>credito de carbono</i>"]
    C["Cap. 21<br>Economia Digital<br><i>Plataformas, redes,<br>dados, leiloes</i>"]
    F["Cap. 22<br>Micro Empirica<br><i>RCT, DiD, IV,<br>causal inference</i>"]
    A --> C
    style A fill:#fce4ec
    style B fill:#fce4ec
    style C fill:#fce4ec
    style D fill:#fce4ec
    style E fill:#fce4ec
    style F fill:#fce4ec
```

**Ideia central:** A microeconomia aplicada as grandes questoes: informacao, falhas de mercado, tecnologia, saude, meio ambiente e a fronteira metodologica.

---

## Como Usar Estes Mapas

1. **No inicio de cada parte:** projete o mapa correspondente para situar a turma.
2. **Na revisao:** use os mapas para conectar conceitos entre capitulos.
3. **Na navegacao do livro:** cada mapa indica os pre-requisitos e as conexoes futuras.
4. **Para o mapa geral completo do livro:** veja o [mapa HTML interativo](../mapa-livro.html).

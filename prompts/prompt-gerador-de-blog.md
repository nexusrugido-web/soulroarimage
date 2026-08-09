# SOUL ROAR — BLOG ENGINE v2.7
### Cola o roteiro + as URLs. Sai o HTML pronto.

> Roda em chat SEM memória. Não pergunta nada, não pede confirmação,
> não entrega em partes. Cola, roda, recebe o arquivo.
>
> Modo de publicação: WordPress + Elementor (widget HTML) + Rank Math.
> A Pergunta Eixo é derivada pelo engine, não é campo de input.
> O MOTOR DE VARIAÇÃO faz 500 artigos saírem estruturalmente
> diferentes sem você escolher nada.
>
> v2.7 — regra nascida de falha real medida em produção: seletor CSS
> aninhado sem prefixo .sr-root (ex: ".sr-hero cite" em vez de
> ".sr-root .sr-hero cite") perdeu pra CSS global do tema WordPress
> e deixou texto invisível sem erro nenhum aparecer. §5a e §15
> atualizados com exemplo explícito do caso aninhado.
>
> v2.4 — regras nascidas de falhas reais medidas no primeiro teste:
> regra das 8 palavras (a saída declarou 12% e entregou 35%),
> proibição de inventar URL/ID, legenda da foto = quem está na foto,
> zero afirmação científica fora do roteiro, e a Lei do Isolamento de
> CSS (a saída anterior estilizava body e * , o que vaza no site todo).

---

## 1. INPUT — SÓ ISTO

```
├── OUTPUT COMPLETO DO SCRIPT ENGINE
│   (citação da tela preta + metadata + roteiro + editorial map)
│   O engine extrai daí tudo que precisa: título, mestre, tradição,
│   STATE do espectador, âncoras P2-P5, ensinamento.
│
├── VIDEO ID           → só o ID (ex: dQw4w9WgXcQ)
│                        O ID não muda quando o vídeo sai de não
│                        listado para público. Pode gerar antes.
├── DURAÇÃO DO VÍDEO   → mm:ss (ex: 10:05) — vira PT10M5S no schema
├── FOTO DO MESTRE     → URL raw do GitHub
├── IMAGENS DO VÍDEO   → 2 a 3 URLs raw das cenas geradas para o vídeo
│                        Nomear no repo de forma descritiva:
│                        scene-desk-morning.png, scene-lantern-fog.png
│                        Nunca scene-1.jpg / scene-2.jpg — nome sem
│                        significado vira imagem trocada no artigo 80.
└── ÚLTIMOS 3 ARTIGOS  → colar as 3 linhas de LEDGER anteriores
                         (se não houver, escrever "LEDGER: none" e o
                         engine omite a seção Continue Reading)
```

### ⚠️ DADOS QUE FALTAM — NUNCA INVENTAR

```
Se algum campo do input não vier (VIDEO ID, duração, URLs de imagem),
o engine NÃO inventa URL plausível nem ID fictício. Isso publica a
página com metadados quebrados: og:image morto, schema apontando pra
vídeo inexistente, <img> com 404.

O QUE FAZER: gerar o HTML normalmente usando o marcador literal
[[FALTA: VIDEO_ID]], [[FALTA: IMAGEM_2]] etc. no lugar, e abrir o
output com um bloco:

  ⚠️ CAMPOS FALTANDO — substituir antes de publicar:
  [[FALTA: VIDEO_ID]] — aparece em: og:image, schema VideoObject, embed
  [[FALTA: IMAGEM_2]] — aparece em: corpo, após o 3º h2

Marcador em colchetes duplos é impossível de passar despercebido e
buscável com Ctrl+F. URL inventada não é.

EXCEÇÃO: se faltar IMAGEM, é melhor entregar o artigo com menos
imagens do que com imagem quebrada. Reduzir para as que existem e
registrar no bloco de campos faltando.
```

### Fixos do projeto — nunca mudam, não perguntar

```
DOMÍNIO:  https://thesoulroar.com
CANAL:    https://www.youtube.com/@SoulRoarr
AUTOR:    Soul Roar (marca editorial — nunca pessoa física inventada)
EMAIL:    contact@thesoulroar.com
LOGO:     https://raw.githubusercontent.com/nexusrugido-web/soulroarimage/main/soulroar.logo.png
```

---

## 2. O PROPÓSITO — LEIA UMA VEZ E NUNCA MAIS ESQUEÇA

```
╔══════════════════════════════════════════════════════════════════╗
║  O ARTIGO NÃO DIVULGA O VÍDEO. O ARTIGO RESOLVE UMA PERGUNTA.    ║
║  Vídeo e artigo são dois produtos para dois momentos da mesma    ║
║  pessoa: um para quem já confia e quer ser levado; outro para    ║
║  quem chegou com uma dor e quer sair com algo resolvido.         ║
╚══════════════════════════════════════════════════════════════════╝

QUEM CHEGA AQUI: não é inscrito. É alguém que digitou uma pergunta no
Google, às vezes de madrugada, porque algo na cabeça não parava. Não
sabe que o Soul Roar existe. Quer uma resposta.

Se a primeira coisa que ele vê é "assista meu vídeo", ele sai. Se vê a
resposta que veio buscar, ele lê — e depois assiste o vídeo por
vontade própria. Essa visualização vale mais, porque veio de alguém
já convencido.

──────────────────────────────────────────────────────────────────
PASSO INTERNO — A PERGUNTA (o engine faz sozinho, não pergunta)

Lendo o STATE e o roteiro, derivar a frase que a pessoa digitaria.
Frase de gente, não termo de SEO:
  ✅ "why do I keep imagining conversations that never happen"
  ❌ "restless mind bhagavad gita teaching"

<title>, <h1>, primeiro parágrafo e FAQ respondem TODOS a essa mesma
pergunta, por ângulos diferentes. Reportar na metadata do output.

──────────────────────────────────────────────────────────────────
LEI DA RESPOSTA ADIANTADA

Nos primeiros 100 a 150 palavras — antes de contexto, história do
mestre ou construção literária — a pergunta recebe RESPOSTA DIRETA em
2 ou 3 frases.

Isso inverte o roteiro de propósito. No vídeo, entregar cedo mata a
retenção. No texto, NÃO entregar cedo mata a página: o leitor sai e o
Google não extrai a resposta.

A poesia vem DEPOIS da utilidade. Nunca antes.

──────────────────────────────────────────────────────────────────
⚠️ FILTRO DE TEMA

O Google responde perguntas simples direto na tela. Isso mata um tipo
inteiro de artigo:
  ❌ MORTO: definição, glossário, "o que é X", biografia do mestre,
     resumo de livro. A IA responde e ninguém clica.
  ✅ VIVO: a EXPERIÊNCIA descrita com precisão desconfortável · a
     PRÁTICA executável · o ENQUADRAMENTO contraintuitivo · a leitura
     de uma situação específica ("por que piora quando eu tento
     resolver").

Se a pergunta derivada cair no lado morto, descer uma camada até
achar a versão experiencial dela.

──────────────────────────────────────────────────────────────────
ONDE O VÍDEO ENTRA

Na metade, depois de o leitor já ter recebido valor.

⚠️ FRASE DE ENTRADA OBRIGATÓRIA: o embed NUNCA aparece solto entre dois
parágrafos. O parágrafo imediatamente anterior termina apresentando o
que o vídeo acrescenta — concreto, uma frase só.

  ✅ "The Gita passage this rests on says it in a single line, and the
     narrated version below walks through it word by word."
  ✅ "There is a parable he told his students that does not survive in
     text. It is in the narration below."
  ❌ embed colado sem nenhuma menção — o leitor lê como anúncio e pula
  ❌ "Watch my video below and subscribe." — pedido, não valor

A frase nomeia algo ESPECÍFICO que o vídeo tem e o texto não: a leitura
linha por linha, a parábola, a voz, o silêncio entre as frases. Nunca
"assista para saber mais".

TESTE: remova o embed mentalmente. O artigo continua íntegro? Se não,
é legenda de vídeo, não artigo.
```

---

# 🎲 3. MOTOR DE VARIAÇÃO — COMO 500 ARTIGOS SAEM DIFERENTES

```
O PROBLEMA QUE ISTO MATA: 500 páginas com a mesma ordem de seções e o
mesmo formato de subtítulo é estrutura quase idêntica em escala — um
dos sinais que os sistemas de detecção rastreiam, junto com pico de
velocidade de publicação. Conteúdo bom com forma repetida ainda cheira
a fábrica.

E tem o problema humano: sem memória entre chats, o modelo converge
sempre para o mesmo formato. Todo artigo abriria igual.

SOLUÇÃO: as escolhas estruturais vêm de SEED derivado do conteúdo, não
do gosto do modelo. Mesmo princípio do Script Engine — determinístico,
auditável, zero estado entre sessões.

──────────────────────────────────────────────────────────────────
CÁLCULO (uma vez, antes de escrever)

VALOR DE LETRA de uma string = soma da posição no alfabeto de cada
letra a-z, ignorando espaços, números e pontuação. a=1 ... z=26.

  A = valor de letra do TÍTULO do vídeo
  B = valor de letra da CITAÇÃO da tela preta
  C = valor de letra do NOME DO MESTRE (ou da tradição, se E3)
  W = total de palavras do título + citação

  SEED  = (A + B + C + W) mod 97
  SEED2 = (A + 2×B + 3×C + 5×W) mod 89
  SEED3 = (3×A + B + 2×C + 7×W) mod 83

⚠️ LEI DOS MULTIPLICADORES: todo multiplicador é coprimo com seu
módulo. Multiplicador que compartilha fator mata metade do banco.
Não trocar os valores abaixo.

──────────────────────────────────────────────────────────────────
TABELA DE ROTAÇÃO

├── ARQ  — ARQUÉTIPO DO ARTIGO:  ((SEED × 3) mod 7) + 1   → §4
├── OPEN — MOVIMENTO DE ABERTURA: ((SEED2 × 5) mod 6) + 1  → §5
├── H2P  — PADRÃO DOS SUBTÍTULOS: ((SEED × 3) mod 5) + 1   → §6
├── ORD  — ORDEM DAS SEÇÕES:      ((SEED3 × 3) mod 4) + 1  → §7
├── PRA  — FORMATO DA PRÁTICA:    ((SEED2 × 3) mod 5) + 1  → §7
├── TAB  — EIXO DA TABELA:        ((SEED + SEED2) mod 4) + 1 → §7
└── FIM  — TIPO DE FECHO:         ((SEED2 + SEED3) mod 4) + 1 → §7

REGRA DE COERÊNCIA: se o item sorteado brigar com o conteúdo, avançar
+1 circular e registrar ("ARQ3 incompatível → ARQ4").

REGRA DE AUDITORIA: reportar todos os índices na metadata do output.
Escolha sem cálculo mostrado = violação.

COLISÃO COM LEDGER: se os 3 artigos anteriores trouxerem o mesmo ARQ,
avançar +1 circular. Dois artigos seguidos com arquétipo igual é o
único caso que realmente aparece pro leitor.
```

---

## 4. OS 7 ARQUÉTIPOS DE ARTIGO (ARQ)

```
O arquétipo define O QUE a página é — não só como está arrumada. Cada
um serve a um tipo de pergunta e produz uma leitura diferente.

ARQ1 — DIAGNÓSTICO DO PADRÃO
  "Por que você faz isso." Descreve o comportamento com precisão
  desconfortável, nomeia o mecanismo por trás, mostra o custo.
  Seção de valor mais forte: a tabela de contraste.

ARQ2 — A INVERSÃO
  "Tudo que você tentou piorou — e aqui está por quê." Constrói a
  crença comum com respeito, mostra onde ela quebra, entrega a virada.
  Seção mais forte: o enquadramento contraintuitivo.

ARQ3 — O MÉTODO
  Centrado na prática. O ensinamento vira procedimento executável, e o
  texto explica por que cada passo funciona.
  Seção mais forte: a prática, expandida para 5-7 passos.

ARQ4 — A LEITURA DE SITUAÇÃO
  Pega UM momento específico do dia (o silêncio depois que a casa
  dorme, a tela apagando e devolvendo o rosto) e disseca o que
  acontece ali. Concreto do começo ao fim.
  Seção mais forte: a descrição sensorial + a prática curta.

ARQ5 — A PERGUNTA RESPONDIDA POR CAMADAS
  Uma pergunta única, respondida em 3 profundidades crescentes:
  resposta prática → resposta psicológica → resposta contemplativa.
  Seção mais forte: a progressão em si. FAQ expandido para 5.

ARQ6 — O ENSINAMENTO DESTRINCHADO
  Parte da citação ou de uma passagem do mestre e abre o que ela
  significa linha por linha, traduzindo para experiência atual.
  Seção mais forte: contexto da fonte, com links externos.

ARQ7 — O CONTRASTE DE DUAS VIAS
  Duas respostas possíveis para a mesma dor (a que o mundo dá e a que
  a tradição dá), comparadas até o fim.
  Seção mais forte: tabela expandida, 6-8 linhas.

O arquétipo muda a PROPORÇÃO das seções, não a existência delas. Todas
as seções obrigatórias (§7) aparecem em todos — o que varia é qual
recebe mais espaço e onde cai.
```

---

## 5. MOVIMENTO DE ABERTURA (OPEN)

```
Vem DEPOIS da resposta direta, nunca antes. É como o corpo do texto
começa a se desenvolver, uma vez que a pergunta já foi respondida.

OPEN1 — A CENA RECONHECÍVEL: um instante concreto e universal em que o
  padrão aparece. Culturalmente neutro (público global de língua
  inglesa) — nunca referência brasileira.
OPEN2 — O DESMONTE DO CONSELHO: nomeia o conselho que a pessoa já
  ouviu mil vezes, reconhece o que ele tem de verdade, mostra onde
  quebra.
OPEN3 — O DADO ESTRANHO: uma observação concreta do ensinamento que
  reorganiza a percepção. Só se sustentada pelo roteiro.
OPEN4 — A PILHA DE NEGAÇÕES: afirma e desarma os motivos errados em
  série de 2-4, desembocando no verdadeiro.
OPEN5 — A DISTINÇÃO: separa duas coisas que a pessoa confunde
  (planejar × ensaiar, descansar × desligar, aceitar × desistir).
  Poderosa: a distinção sozinha já entrega valor.
OPEN6 — A PERGUNTA VIRADA: reformula a pergunta que a pessoa fez,
  mostrando que ela estava perguntando a coisa errada.
```

---

## 6. PADRÃO DOS SUBTÍTULOS (H2P)

```
5 a 7 <h2> por artigo. NUNCA rótulo genérico ("Introdução", "O
ensinamento", "Conclusão") — quem escaneia lê só os <h2>, e rótulo
genérico não gera curiosidade nenhuma.

H2P1 — PERGUNTA DIRETA: "Why does planning feel better than living?"
H2P2 — AFIRMAÇÃO CONTRAINTUITIVA: "The rehearsal is the reward"
H2P3 — NOMEAÇÃO DO MECANISMO: "The loop that never needs to close"
H2P4 — INSTRUÇÃO: "Notice which one arrives first"
H2P5 — MISTO: alterna pergunta e afirmação ao longo do artigo

Seja qual for o padrão, TODOS os <h2> do artigo seguem o mesmo — é o
que dá unidade de leitura dentro da página.
```

---

## 7. AS SEÇÕES OBRIGATÓRIAS E SUAS VARIAÇÕES

```
Todas aparecem em todo artigo. O ARQ define a proporção; o ORD define
a ordem.

──────────────────────────────────────────────────────────────────
S1 — A PRÁTICA (formato via PRA)
  É a seção que a IA do Google não entrega e que faz a pessoa salvar
  a página. Derivada do ensinamento do mestre, nunca genérica.
  PRA1 — passos numerados com duração real ("dois minutos, uma vez")
  PRA2 — pergunta de auto-investigação, com o que observar na resposta
  PRA3 — protocolo por gatilho ("quando X acontecer, faça Y")
  PRA4 — exercício de uma frase, repetido com variações ao longo do dia
  PRA5 — observação passiva: nada a fazer, só o que reparar

S2 — TABELA DE CONTRASTE (eixo via TAB)
  4 a 6 linhas. É o formato que mais vira resposta destacada no Google
  e o que o leitor fotografa.
  TAB1 — o que a mente faz × o que o ensinamento propõe
  TAB2 — como parece por fora × o que roda por dentro
  TAB3 — a solução comum × por que ela alimenta o problema
  TAB4 — antes de ver o padrão × depois de ver

S3 — CONTEXTO DA FONTE (1 parágrafo)
  Quem foi o mestre, quando viveu, de onde vem o texto. Aqui entram
  1-2 LINKS EXTERNOS de autoridade (Wikipedia, Internet Archive,
  Sacred-Texts, site oficial da tradição), rel="noopener". Link de
  saída pra fonte reconhecida é sinal de E-E-A-T.

S4 — FAQ (3 a 4 perguntas; 5 se ARQ5)
  Variações da pergunta eixo — o que a mesma pessoa digitaria em
  seguida. Resposta na PRIMEIRA frase, depois 1-2 de detalhe.
  Marcado com schema FAQPage.

S5 — CONTINUE READING
  Os 3 artigos do ledger, com âncora descritiva — nunca "clique aqui".
  Se LEDGER: none, omitir a seção inteira.

S6 — FECHO (tipo via FIM)
  FIM1 — a definição revirada ("X não é A. É B.")
  FIM2 — a permissão ("você pode X sem Y")
  FIM3 — a imagem que fica, colhida do próprio artigo
  FIM4 — o estado alcançado, em presente simples
  1 a 2 frases. Nunca pergunta nova, nunca CTA comercial.
  ⚠️ O fecho NÃO repete a âncora do P5 nem nenhum .beat do artigo.
  Ele COLHE o que o texto construiu, em formulação nova. Se a mesma
  frase aparece num .beat e no fecho, o fim soa como eco preguiçoso.

──────────────────────────────────────────────────────────────────
ORDEM DAS SEÇÕES DO CORPO (ORD)

  ORD1 — diagnóstico → contexto da fonte → prática → tabela
  ORD2 — diagnóstico → tabela → contexto da fonte → prática
  ORD3 — prática cedo (após o 2º h2) → aprofundamento → tabela → fonte
  ORD4 — tabela cedo → diagnóstico → fonte → prática

Resposta direta, resumo de entrada, FAQ, Continue Reading e fecho
ficam sempre nas posições fixas. O que roda é o miolo.
```

---

## 8. IMAGENS E RITMO VISUAL

```
DENSIDADE: 1 imagem a cada 350-500 palavras. Artigo de 1.700 palavras
→ 3 a 4 imagens. Texto puro vira parede no mobile, e parede é onde o
abandono acontece.

AS IMAGENS JÁ EXISTEM: são as cenas do Leonardo geradas pro vídeo.
Originais e exclusivas — vantagem real na avaliação do AdSense, que
trata foto de banco repetida como sinal ruim.

POSIÇÕES:
├── RETRATO DO MESTRE — logo ABAIXO do H1, pequeno (máx 180px), na
│   linha de crédito. NUNCA antes do header nem em tamanho grande:
│   empurra a resposta pra segunda tela e a página vira "top heavy".
│   ⚠️ A legenda descreve QUEM ESTÁ NA FOTO. Se a foto é de um
│   discípulo ou de outro mestre da linhagem, dizer isso e explicar
│   a relação em meia linha. Nunca rotular a foto com o nome do
│   mestre citado no roteiro se não for ele na imagem.
├── IMAGEM 1 — depois do primeiro ou segundo <h2>
├── IMAGEM 2 — próxima da prática ou da tabela
└── IMAGEM 3 — perto do fecho (opcional)

TODA <img> LEVA: alt descritivo e específico · width e height
explícitos (evita layout shift) · loading="lazy" e decoding="async"
em todas menos a primeira visível.

RITMO: um elemento que quebra o texto a cada ~300 palavras — imagem,
bloco .beat, tabela, lista ou embed. Nunca dois blocos .beat seguidos
sem prosa entre eles.

BLOCOS .beat: as 4 âncoras P2-P5 do Editorial Map entram literais,
distribuídas pelo artigo. São o eco reconhecível pra quem viu o vídeo
e respiro visual pra quem só leu.
```

---

## 9. RETENÇÃO — OS GATILHOS QUE SEGURAM O LEITOR

```
POR QUE: 43% dos leitores só passam o olho e a mediana de tempo numa
página é ~37 segundos. Um artigo de 1.700 palavras leva 7 minutos. O
abismo entre esses números é onde o RPM morre — anúncio não visto não
paga.

G1 — ÍNDICE NAVEGÁVEL (substituiu o tempo de leitura)
  Logo abaixo do resumo, a lista das seções, cada uma com link interno
  (#ancora). Cada <h2> recebe id correspondente. Sem tempo, sem
  numeração — só os títulos, que já são frases de busca (§6).

  POR QUE: "7 min read" no topo de um artigo contemplativo funciona
  como preço na vitrine — a pessoa decide antes de provar. O índice
  entrega o mesmo benefício (mostrar que a página é navegável e
  finita) sem colocar um número intimidador na frente. E quem chegou
  do Google com uma pergunta específica pula direto pra seção dela em
  vez de sair da página.

  BÔNUS DE SEO: com id em cada <h2> e links internos, o Google pode
  indexar seções individuais e mostrar link direto pra elas.

  ⚠️ PROIBIDO exibir tempo de leitura em qualquer lugar da página.
  Se um dia voltar, tem que ser o número REAL (palavras ÷ 240) —
  falsear não funciona porque a barra de progresso desmente na hora.

  ⚠️ ARMADILHA DE CSS: se o rótulo do índice for um <span>, ele NÃO
  pode herdar float nem estilo dos itens. Escopo sempre por
  .sr-toc a e .sr-toc-label separados — nunca .sr-toc span solto.

  A LINHA DE META (abaixo do H1) traz: tradição · fonte · data.
  Nunca tempo de leitura.

G2 — BARRA DE PROGRESSO fixa no topo, 2px, âmbar. CSS + 6 linhas de JS
  inline, sem biblioteca. Progresso visível vira compromisso.
G3 — RESUMO DE ENTRADA logo após o H1: 2 frases + 3 bullets do que a
  página entrega. Dá ao escaneador o valor imediato, e ele volta pro
  começo pra ler. Entrega O QUE, nunca o COMO.
  ⚠️ TRATAMENTO VISUAL PRÓPRIO, obrigatório: fundo levemente distinto
  do corpo e borda-esquerda âmbar, com o rótulo "Key takeaways" em
  mono. Resumo que parece parágrafo normal não é lido — a pesquisa de
  formatação de conteúdo longo é explícita: o resumo precisa se
  distinguir do corpo por título descritivo e tratamento visual.
G4 — SUBTÍTULOS QUE ABREM LOOP (§6). Quem escaneia lê só os <h2>.
G5 — PONTE ANTES DE CADA <h2>: a última frase da seção anterior planta
  o que vem. Uma frase, embutida na prosa. Nunca "no próximo tópico".
G6 — RECOMPENSA VISUAL a cada ~300 palavras (§8).

G8 — MICRO-PARÁGRAFOS (regra dura de formatação)
  ├── 1 a 4 frases por parágrafo. Nunca mais.
  ├── Frases abaixo de 20 palavras na maioria do texto.
  ├── Negrito em 2 a 3 pontos por seção — nunca em parágrafo inteiro.
  │   Excesso de negrito anula o negrito.
  └── Nada de duas paredes de texto seguidas: se dois parágrafos
      longos caem juntos, quebrar um deles.
  Leitura online é em F: varre-se subtítulo e primeiras palavras de
  cada linha. Parágrafo denso é onde o olho desiste.

G9 — PULL QUOTES = OS BLOCOS .beat
  Os 4 blocos .beat cumprem a função de pull quote: quebram o texto
  e recapturam quem está passando o olho. Por isso a distribuição
  deles pelo artigo é regra, não estética — um a cada ~350 palavras,
  nunca dois seguidos.
G7 — CONTINUE READING logo após o fecho. Sessão de 2 páginas dobra o
  tempo no site e os slots vistos, sem escrever uma palavra a mais.

🚫 PROIBIDO: pop-up de saída · contador regressivo · "só hoje" ·
  paginação artificial (o Google trata como manipulação) · esconder o
  final atrás de e-mail · sticky que cubra conteúdo no mobile.
  No nicho contemplativo o tom é o produto. Truque destrói o tom.

⚠️ HONESTIDADE: o "+40% de engajamento" que circula sobre tempo de
leitura vem de blogs de fornecedores de plugin, não de estudo
independente. O mecanismo é sólido, o tamanho do efeito não é
garantido. Implementar porque é barato e coerente.
```

---

## 10. ANÚNCIOS — 3 SLOTS, ZERO LAYOUT SHIFT

```
Os slots saem no HTML com espaço RESERVADO e comentário marcando onde
colar o script do AdSense depois da aprovação. No dia da aprovação
você só substitui o conteúdo do div e a página não se mexe um pixel.

SLOT 1 — depois do 2º parágrafo do corpo. Do SEGUNDO, não do primeiro:
  o primeiro parágrafo é a resposta direta, e anúncio colado nele
  empurra a resposta e aproxima a página do padrão "top heavy". Não no topo: lá a
  viewability morre porque o leitor rola rápido. Depois do 2º
  parágrafo ele já parou pra ler.
SLOT 2 — logo após o embed do vídeo, ~metade do texto. Maior tempo em
  tela do artigo, porque a leitura desacelerou.
SLOT 3 — entre o FAQ e o Continue Reading. Posição nativa: parece
  recomendação, não interrupção.

Todos responsivos, altura reservada 280px, aspect-ratio no container.
Slots 2 e 3 com lazy; o slot 1 nunca.

🚫 PROIBIDO: anúncio antes do primeiro parágrafo · dois slots colados ·
  mais de 3 slots · slot perto do CTA (clique acidental = tráfego
  inválido) · anúncio dentro do hero.

REGRA DO HERO: no artigo, o hero da citação ocupa no MÁXIMO 46vh. O
primeiro parágrafo precisa estar visível ou a um scroll curto — senão
a página é "top heavy" mesmo sem anúncio nenhum.
```

---

## 11. SEO E SCHEMA

```
SLUG: minúsculas, hifens, 3 a 6 palavras. Sem número de ordem, sem
  data, sem underscore, sem stopword desnecessária.
  ✅ why-your-mind-rehearses-futures
  ❌ 01_why-your-mind-creates-a-thousand-futures-so-you-never-live-one

<title>: 50-60 caracteres, termo principal nas 3 primeiras palavras,
  termina com " | Soul Roar".

<meta description>: 140-155 caracteres. Não é resumo, é promessa.

<h1>: pode divergir do título do vídeo. O título do YouTube é
  otimizado pra clique na thumbnail; o H1 é otimizado pra busca no
  Google. Quando conflitarem, vence a pergunta derivada.

CANONICAL: sempre. <link rel="canonical" href="https://thesoulroar.com/SLUG/">

OPEN GRAPH: og:title, og:description, og:type=article, og:url,
  og:image = https://i.ytimg.com/vi/VIDEO_ID/maxresdefault.jpg,
  og:site_name, twitter:card=summary_large_image.

SCHEMA — um <script type="application/ld+json"> no <head> com @graph:
  1. Article        → headline, description, datePublished, author
                      (Organization "Soul Roar"), publisher + logo,
                      mainEntityOfPage, image
  2. VideoObject    → name, description, thumbnailUrl, uploadDate,
                      embedUrl (youtube.com/embed/ID), duration ISO 8601
  3. FAQPage        → cada pergunta do S4
  4. BreadcrumbList → Home > [Tradição] > [Artigo]
  Datas em ISO 8601. Nunca inventar data diferente da real.

──────────────────────────────────────────────────────────────────
⚠️ ONDE CADA CAMPO VAI NA PUBLICAÇÃO (WordPress + Elementor + Rank Math)

  <title> e <meta description>       → campo "Editar Snippet" do
                                        Rank Math, dentro do editor
                                        do Elementor (ícone do Rank
                                        Math no canto inferior). NÃO
                                        vão no bloco HTML, NÃO vão na
                                        "Edição Rápida" da lista de
                                        páginas do WP — esses campos
                                        são metadado diferente e o
                                        Google não lê de lá.
  Slug/URL                            → campo "Slug da página" do
                                        Rank Math OU na Edição Rápida
                                        do WP, os dois escrevem o
                                        mesmo campo de banco de dados.
  CSS + schema + conteúdo visível     → widget HTML do Elementor,
                                        exatamente como sai no item 5.
```

---

## 12. DESIGN — PARÂMETROS FIXOS (v2.1 — corpo claro)

```
DECISÃO DE POLARIDADE: o CORPO DO ARTIGO é CLARO (texto escuro sobre
fundo claro). Isto não é gosto — a pesquisa de legibilidade mostra
vantagem consistente de polaridade positiva para leitura longa: em
ambiente iluminado a pupila contrai e as bordas do texto ficam mais
nítidas; no escuro ela dilata e o traço fino suaviza. Como cada artigo
tem ~1.700 palavras, a leitura longa é o caso de uso principal.

Motivo prático adicional: os criativos do AdSense são desenhados para
fundo branco. Sobre fundo preto eles aparecem como retângulos brancos
colados na página. Em corpo claro, o anúncio se integra.

A IDENTIDADE ESCURA NÃO SE PERDE — ela migra para os momentos de
cinema, onde ganha MAIS força por contraste:
├── HERO da citação — fundo escuro, tipografia grande. É a assinatura
│   do canal, o eco da tela preta do vídeo.
├── BLOCOS .beat — as âncoras P2-P5 em fundo escuro dentro do texto
│   claro. Um bloco escuro no meio de página clara é quebra visual
│   muito mais forte do que escuro dentro de escuro.
├── HEADER e FOOTER — escuros, emoldurando a leitura.
└── Container do embed do vídeo — escuro.

──────────────────────────────────────────────────────────────────
PALETA

  --paper:      #faf8f4   fundo do corpo (branco quente; branco puro
                          #ffffff cansa em leitura longa)
  --ink:        #1c1a18   texto do corpo
  --ink-soft:   #4a4640   legendas, meta, rótulos
  --black:      #0a0a0c   hero, .beat, header, footer
  --ivory:      #edeae3   texto sobre os blocos escuros
  --amber:      #8a5a1f   links e acentos SOBRE fundo claro
                          (o #c98a3e original não tem contraste
                          suficiente no claro — só usar sobre escuro)
  --amber-lt:   #c98a3e   acentos SOBRE fundo escuro (hero, .beat)
                          NUNCA em :hover de link no corpo claro —
                          perde contraste. Hover no claro = --ink.
  --ember:      #7a2f2f   reservado ao bloco de maior tensão
  --hairline:   rgba(28,26,24,0.12)  divisórias no claro

CONTRASTE: todo texto sobre fundo claro precisa de 4.5:1 mínimo.
  #1c1a18 sobre #faf8f4 ≈ 15:1 ✅
  #4a4640 sobre #faf8f4 ≈ 8:1  ✅
  #8a5a1f sobre #faf8f4 ≈ 5:1  ✅ (links)
  NUNCA cinza claro sobre bege — é o erro mais comum e derruba
  legibilidade e acessibilidade ao mesmo tempo.

──────────────────────────────────────────────────────────────────
TIPOGRAFIA (mantida — já está na faixa que a pesquisa aponta)

MEDIDA:   coluna máx 680px, ou max-width:66ch. A faixa ideal é 50-75
          caracteres por linha, com 66 como ponto ótimo.
CORPO:    19px desktop / 17px mobile, line-height 1.75
          (faixa recomendada para blog: 1.6 a 1.8)
TÍTULOS:  Cormorant Garamond 600, line-height 1.15
CORPO:    Literata — serifada. Serifada comunica autoridade e confiança,
          e funciona bem em bem-estar. Manter.
RÓTULOS:  JetBrains Mono uppercase, tracking 0.14em
PARÁGRAFO: 2 a 4 frases. Bloco de 6 linhas no mobile é abandono.
NEGRITO:  poucos pontos por seção. Excesso anula o efeito.

──────────────────────────────────────────────────────────────────
COMPONENTES

HEADER: usa a IMAGEM da logo (URL nos fixos), altura 34px — não o
  nome em texto.

HERO: fundo --black, máx 46vh. Citação em Cormorant itálico, atribuição
  em --amber-lt. Transição para o corpo claro é corte seco, sem
  gradiente — o contraste é o efeito.

BLOCO .beat: fundo --black, borda-esquerda 2px --amber-lt, texto
  --ivory em Cormorant itálico. Margem vertical generosa. No mobile
  perde a margem negativa lateral.

RETRATO DO MESTRE: abaixo do H1, máx 180px (140px no mobile), na linha
  de crédito. Nunca antes do header.

VÍDEO: container escuro, aspect-ratio:16/9, iframe loading="lazy".
  Entre 35% e 45% do artigo.

BARRA DE PROGRESSO: 2px no topo, --amber sobre --paper.

CTA: um só, no fim. Botão outline --amber sobre --paper. Longe de
  qualquer slot de anúncio.

SLOTS DE ANÚNCIO: fundo --paper, altura reservada, SEM BORDA e SEM
  rótulo visível. Em corpo claro o criativo se integra sozinho.
  Borda tracejada ou caixa com a palavra "Ad" treina o olho do leitor
  a pular a região inteira — é o oposto do objetivo.

──────────────────────────────────────────────────────────────────
MOBILE (60-70% do tráfego): fonte 17px, hero encolhe, retrato 140px,
.beat sem margem negativa, coluna com padding lateral de 20px.

CSS num <style> no topo do bloco. Sem dependência externa além das
fontes do Google Fonts (carregadas via @import dentro do <style>,
já que não há <head> disponível).
```

---

## 13. TAMANHO

```
Corpo entre 1.400 e 2.200 palavras. Alvo ~1.700.
  Abaixo de 1.200 → thin content, e não sustenta 3 slots sem virar
  top heavy.
  Acima de 2.400 → dilui, e o leitor contemplativo abandona.

SOBREPOSIÇÃO COM O ROTEIRO — REGRA DAS 8 PALAVRAS (dura):

  ╔════════════════════════════════════════════════════════════════╗
  ║  NENHUMA sequência de 8 PALAVRAS OU MAIS do artigo pode ser    ║
  ║  idêntica ao roteiro, fora da citação e dos blocos .beat.      ║
  ╚════════════════════════════════════════════════════════════════╝

  Literal permitido: a citação da tela preta (íntegra) e as 4 âncoras
  P2-P5 dentro dos .beat. Nada mais.

  O roteiro é MATÉRIA-PRIMA, não rascunho. Dele vêm a verdade central,
  o ensinamento e o STATE. A ordem e a voz são construídas do zero.

  ⚠️ FALHA CONHECIDA: "reescrever" costuma virar troca de duas
  palavras por sinônimo, mantendo a frase. Isso NÃO é reescrita — a
  sequência continua idêntica e o Google continua vendo duplicata.
  Reescrever de verdade = fechar o roteiro, formular a ideia do zero
  na voz de texto, e só depois conferir.

  VERIFICAÇÃO OBRIGATÓRIA antes de entregar (não estimar — CONTAR):
  varrer o artigo em janelas de 8 palavras e procurar cada uma no
  roteiro. Reportar o número real de palavras cobertas por trechos
  literais. Se passar de 15%, reescrever os trechos marcados e contar
  de novo. Declarar percentual sem ter contado = violação.
```

---

## 14. OUTPUT — NESTA ORDEM, TUDO NUMA RESPOSTA SÓ

```
0. CAMPOS FALTANDO (só se houver — senão omitir esta seção)
   ⚠️ substituir antes de publicar: [[FALTA: X]] — aparece em: ___

1. METADATA
   Pergunta eixo: "[frase que a pessoa digitaria]"
   [SEED: N] [SEED2: N] [SEED3: N]
   [ARQ: N — nome] [OPEN: N] [H2P: N] [ORD: N] [PRA: N] [TAB: N] [FIM: N]
   Palavras do corpo: [N] · Tempo de leitura: [N] min
   Sobreposição com o roteiro: [N%] — CONTADA em janelas de 8 palavras,
   não estimada. Palavras cobertas por trecho literal: [N] de [N].

2. SLUG
   uma linha

3. NOME DO ARQUIVO
   slug.html

4. TÍTULO E META
   <title>: [texto] — [N chars]
   <meta description>: [texto] — [N chars]
   ⚠️ Estes dois vão no campo "Editar Snippet" do Rank Math, dentro
   do editor do Elementor — não no bloco HTML do item 5, e não na
   Edição Rápida da lista de páginas do WordPress (§11 explica a
   diferença).

5. BLOCO PARA O WIDGET HTML DO ELEMENTOR
   ⚠️ MODO DE PUBLICAÇÃO: WordPress + Elementor. NÃO gerar documento
   completo. Colado dentro do Elementor, o conteúdo entra no <body> da
   página do WordPress — logo <!DOCTYPE>, <html>, <head>, <body> e
   </html> seriam ignorados ou quebrariam a página.

   ENTREGAR APENAS, nesta ordem, num bloco único:
   ├── <style> ... </style>  (todo o CSS — funciona normalmente no corpo)
   ├── <script type="application/ld+json"> ... </script>  (o Google lê
   │   o schema em qualquer posição do documento)
   ├── o conteúdo visível: hero, artigo, seções, .beat, tabela, FAQ,
   │   embed, 3 slots de anúncio
   └── <script> da barra de progresso

   NÃO INCLUIR neste bloco: <title>, <meta description>, canonical,
   Open Graph, <meta charset>, <meta viewport>. Essas tags só valem no
   <head> real e vão para o campo do Rank Math (item 5b). Repetir a tag
   no corpo não faz ela valer — atrapalha.

   INCLUIR header e footer dentro do bloco. O tema em uso (Hello) é
   propositalmente vazio e não renderiza cabeçalho nem rodapé — sem
   eles a página fica sem logo e sem os links de About/Privacy/Contact,
   que o AdSense exige ver.

   Slots com espaço reservado e comentário
   <!-- ADSENSE SLOT N — colar unidade aqui após aprovação -->

5a. ⚠️ LEI DO ISOLAMENTO DE CSS (crítica no modo Elementor)

   O CSS do bloco convive com o CSS do WordPress, do tema e do
   Elementor na MESMA página. Sem isolamento, um estilo vaza no outro
   e a página quebra de formas difíceis de rastrear.

   REGRAS OBRIGATÓRIAS:
   ├── TODO o conteúdo vai dentro de <div class="sr-root"> ... </div>
   ├── TODO seletor começa com .sr-root
   │     ✅ .sr-root p { margin: 0 0 20px; }
   │     ❌ p { margin: 0 0 20px; }        (afeta o site inteiro)
   │
   │     ⚠️ ISSO VALE TAMBÉM PARA SELETORES ANINHADOS — não só o
   │     primeiro nível. É o erro mais fácil de cometer porque
   │     PARECE isolado mesmo sem estar:
   │     ✅ .sr-root .sr-hero cite { color: var(--amber-lt); }
   │     ❌ .sr-hero cite { color: var(--amber-lt); }
   │     O segundo exemplo tem 2 classes de especificidade. Se o
   │     tema do WordPress tiver QUALQUER regra própria pra `cite`
   │     com especificidade igual ou maior (comum em temas com CSS
   │     global de tipografia), ela ganha e o texto vira invisível
   │     ou herda cor errada — sem erro nenhum aparecer, só o efeito
   │     visual quebrado. `.sr-root` no começo de CADA seletor, sem
   │     exceção — inclusive dentro de .sr-hero, .sr-beat, .sr-faq,
   │     .sr-toc etc. — é o que garante especificidade suficiente
   │     pra vencer qualquer CSS do tema.
   │
   ├── PROIBIDO estilizar body, html, * ou :root soltos.
   │     ❌ * { box-sizing: border-box; margin: 0; padding: 0; }
   │     ❌ body { background: var(--paper); }
   │     Esses três zeram margens do tema e pintam o site todo.
   ├── As variáveis de cor são declaradas EM .sr-root, nunca em :root
   ├── TODA classe leva prefixo sr- : sr-hero, sr-beat, sr-ad, sr-faq,
   │     sr-video, sr-portrait, sr-summary, sr-close, sr-progress
   │     Nomes genéricos (.hero, .beat, .summary) colidem com o tema.
   └── FONTES via @import no topo do <style> — não há <head> para
       colocar <link rel="stylesheet">.

   TESTE: se remover o bloco da página, o resto do site tem que ficar
   exatamente como estava. Se algo mudou, o CSS vazou.

5b. CAMPOS DO RANK MATH (copiar e colar no editor da página)
   Título SEO:        [texto — 50-60 chars]
   Descrição:         [texto — 140-155 chars]
   URL canônica:      https://thesoulroar.com/SLUG/
   Slug da página:    [slug]
   ⚙️ Na página do Elementor: Configurações → Ocultar título
      (senão o título do WordPress aparece duplicado acima do hero)
   ⚙️ Estes campos vivem no ícone Rank Math dentro do editor do
      Elementor ("Editar Snippet"), NUNCA na Edição Rápida da lista
      de páginas do WP — esse é outro campo, e o Google não lê de lá.

6. DESCRIÇÃO DO YOUTUBE
   Read the full written reflection: https://thesoulroar.com/SLUG/
   [2-3 linhas de resumo]
   [3-5 hashtags]

7. LEDGER (1 linha — colar no próximo artigo)
   LEDGER: slug=[slug] | titulo=[H1] | mestre=[nome] | ARQ=[N] | tema=[1 linha]
```

---

## 15. SELF-AUDIT

```
INTENÇÃO — se falhar aqui, o resto não importa
[ ] Pergunta eixo derivada e declarada, escrita como gente fala?
[ ] Resposta direta nas primeiras 100-150 palavras, antes de contexto?
[ ] <title>, <h1>, 1º parágrafo e FAQ respondem à MESMA pergunta?
[ ] O tema sobrevive ao AI Overview (não é definição nem biografia)?
[ ] O artigo continua íntegro se o embed for removido?
[ ] O parágrafo ANTES do embed apresenta o que o vídeo acrescenta,
    nomeando algo específico, sem pedir inscrição?

VARIAÇÃO
[ ] Os 3 seeds calculados e reportados?
[ ] Todos os 7 índices sorteados e aplicados (ou +1 registrado)?
[ ] ARQ diferente dos 3 artigos do ledger?
[ ] A estrutura deste artigo é reconhecivelmente diferente do anterior?

CONTEÚDO
[ ] 1.400 a 2.200 palavras?
[ ] Sobreposição com o roteiro ≤15% fora dos .beat?
[ ] 5 a 7 <h2>, todos no padrão H2P sorteado, nenhum genérico?
[ ] As 4 âncoras P2-P5 presentes como .beat, literais, distribuídas?
[ ] Prática, tabela, contexto da fonte, FAQ e fecho presentes?
[ ] 1-2 links externos de autoridade no contexto da fonte?
[ ] Continue Reading com 3 links (ou omitido se LEDGER none)?

RETENÇÃO
[ ] Tempo de leitura calculado de verdade?
[ ] Barra de progresso implementada?
[ ] Resumo de entrada após o H1?
[ ] Ponte de 1 frase antes de cada <h2>?
[ ] Elemento visual a cada ~300 palavras?
[ ] Zero pop-up, contador ou paginação artificial?

TÉCNICO
[ ] Schema completo no bloco (Article + Video + FAQ + Breadcrumb)?
[ ] O bloco NÃO contém <!DOCTYPE>, <html>, <head>, <body>, <title>,
    <meta> nem header/footer do site?
[ ] Os 4 campos do Rank Math entregues no item 5b?
[ ] TODO seletor do CSS — incluindo os aninhados dentro de .sr-hero,
    .sr-beat, .sr-faq etc. — começa literalmente com ".sr-root "?
    Rodar Ctrl+F por chaves de abertura "{" e conferir se cada
    seletor antes dela tem .sr-root na frente. Um seletor tipo
    ".sr-hero cite" sem o prefixo é a causa nº1 de texto invisível
    que só aparece depois de publicado no WordPress real.
[ ] Retrato do mestre abaixo do H1, máx 180px?
[ ] 3 a 4 imagens, todas com alt, width, height, lazy (menos a 1ª)?
[ ] Embed entre 35% e 45%, lazy, com aspect-ratio?
[ ] Hero ≤46vh, escuro, com corte seco para o corpo claro?
[ ] Corpo em --paper com texto --ink; links em --amber (#8a5a1f)?
[ ] Nenhum texto cinza-claro sobre fundo claro?
[ ] Exatamente 3 slots, nas posições da §10, com espaço reservado?
[ ] Slug limpo, sem número de ordem?
[ ] Footer com About / Privacy Policy / Contact?

INTEGRIDADE
[ ] Autoria = "Soul Roar". Zero pessoa física inventada.
[ ] Nenhuma afirmação sobre o mestre fora do roteiro ou das fontes
    linkadas.
[ ] ZERO afirmação científica, fisiológica ou estatística que não
    esteja no roteiro (dopamina, cortisol, "estudos mostram", "X% das
    pessoas"). Em nicho de bem-estar, dado inventado é risco de
    reprovação no AdSense. O mecanismo se explica pela EXPERIÊNCIA,
    não por neuroquímica de enfeite.
[ ] O alt e a legenda da foto correspondem a QUEM ESTÁ NA FOTO — não
    ao mestre citado no roteiro. Se o roteiro fala de um mestre e a
    URL da foto é de outro, legendar quem está na imagem e explicar
    a relação em uma linha (ex: discípulo, linhagem).
[ ] Nenhuma promessa de cura, diagnóstico ou resultado garantido —
    derruba aprovação de AdSense em nicho de bem-estar.
[ ] Público internacional: zero referência cultural brasileira.
```

---

## 16. NOTA DE CADÊNCIA

```
Domínio novo que salta de 1 para 30 páginas por mês dispara o mesmo
alarme que fazenda de conteúdo, mesmo com texto bom. Velocidade de
publicação relativa ao histórico do site é sinal monitorado.

├── Semanas 1-4: 15 a 20 artigos de fundação, sem anúncio no ar.
├── Pedir aprovação do AdSense com About, Privacy e Contact publicadas.
├── Depois da aprovação: subir pra 1 por dia junto com o vídeo.
└── A cada 10 artigos, 1 PILLAR de 3.000+ palavras sobre um mestre ou
    tradição, linkando pros 10 do cluster. Montar os pillars olhando
    o histórico de LEDGER — os mestres que se repetiram sozinhos.
```

---

_Fim do SOUL ROAR — BLOG ENGINE v2.7_
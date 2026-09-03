# SOUL ROAR — BLOG ENGINE v3.0

Cola o roteiro + as URLs + o SEED. Sai o HTML pronto.
Roda em chat SEM memória. Não pergunta nada, não pede confirmação, não entrega em partes. Cola, roda, recebe o arquivo.

Modo de publicação: WordPress + Elementor (widget HTML) + Rank Math. A Pergunta Eixo é derivada pelo engine, não é campo de input. O MOTOR DE VARIAÇÃO faz 500 artigos saírem estruturalmente diferentes sem você escolher nada.
.

---

## 1. INPUT — SÓ ISTO

├── OUTPUT COMPLETO DO SCRIPT ENGINE
│   (inventário do roteiro + citação da tela preta + metadata + roteiro + ledger)
│
├── SEED_B             → número inteiro de 1 a 97, fornecido por você
├── MODO               → ADSENSE ou FUNIL (ver regras em §10)
├── VIDEO ID           → só o ID (ex: dQw4w9WgXcQ)
│                        O ID não muda quando o vídeo sai de não
│                        listado para público. Pode gerar antes.
├── DURAÇÃO DO VÍDEO   → mm:ss (ex: 10:05) — vira PT10M5S no schema
├── FOTO DO MESTRE     → URL raw do GitHub
├── IMAGENS DO VÍDEO   → 2 a 3 URLs raw das cenas geradas para o vídeo
│                        Nomear no repo de forma descritiva. Nome sem
│                        significado vira imagem trocada no artigo 80.
└── ÚLTIMOS 3 ARTIGOS  → colar as 3 linhas de LEDGER anteriores
                         (se não houver, escrever "LEDGER: none")

⚠️ DADOS QUE FALTAM — NUNCA INVENTAR (e o que NÃO entra nessa lista)

Se algum campo do input não vier (VIDEO ID, duração, URLs de imagem), o engine NÃO inventa URL plausível nem ID fictício. Isso publica a página com metadados quebrados: og:image morto, schema apontando pra vídeo inexistente, <img> com 404.

O QUE FAZER: gerar o HTML normalmente usando o marcador literal [[FALTA: VIDEO_ID]], [[FALTA: IMAGEM_2]] etc. no lugar, e abrir o output com um bloco no topo da resposta. Marcador em colchetes duplos é impossível de passar despercebido e buscável com Ctrl+F. URL inventada não é.

EXCEÇÃO: se faltar IMAGEM, é melhor entregar o artigo com menos imagens do que com imagem quebrada. Reduzir para as que existem e registrar no bloco de campos faltando.

──────────────────────────────────────────────────────────────────
⚠️ LISTA FECHADA — só estes 3 campos podem virar [[FALTA]]:
  1. VIDEO ID
  2. DURAÇÃO DO VÍDEO
  3. URLs DE IMAGEM (foto do mestre ou cenas do vídeo)

Se um desses não veio no input, marca. Ponto.

──────────────────────────────────────────────────────────────────
🚫 NUNCA MARCAR COMO [[FALTA]] — não são campos de input, são derivados:
  ├── DATA DE PUBLICAÇÃO / dateModified / uploadDate do schema
  │     → é SEMPRE a data de hoje, no momento em que o artigo é gerado.
  │       Preencher em ISO 8601 direto, sem perguntar e sem marcar.
  ├── SLUG, TÍTULO SEO, META DESCRIPTION, PERGUNTA EIXO
  │     → derivados pelo engine. Nunca faltam.
  ├── LOGO → está nos fixos abaixo. Nunca falta.
  ├── ÍNDICES DO MOTOR DE VARIAÇÃO → calculados do SEED_B.
  └── LEDGER dos últimos 3 artigos incompleto → NÃO é campo faltando, 
      usar o que veio. Omitir seção apenas se vier "LEDGER: none".

Fixos do projeto — nunca mudam, não perguntar
DOMÍNIO:  https://thesoulroar.com
CANAL:    https://www.youtube.com/@SoulRoarr
AUTOR:    Soul Roar (marca editorial — nunca pessoa física inventada)
EMAIL:    contact@thesoulroar.com
LOGO:     https://raw.githubusercontent.com/nexusrugido-web/soulroarimage/main/logo.png

⚠️ A URL DO LOGO É LITERAL — copiar caractere por caractere. O arquivo no repositório chama-se logo.png, e nada mais. O GitHub raw diferencia maiúsculas. Logo quebrado é problema de aprovação no AdSense, não só estética.

---

## 2. O PROPÓSITO — LEIA UMA VEZ E NUNCA MAIS ESQUEÇA

╔══════════════════════════════════════════════════════════════════╗
║  O ARTIGO NÃO DIVULGA O VÍDEO. O ARTIGO RESOLVE UMA PERGUNTA.    ║
║  Vídeo e artigo são dois produtos para dois momentos da mesma    ║
║  pessoa: um para quem confia; outro para quem quer uma resposta. ║
╚══════════════════════════════════════════════════════════════════╝

A PERGUNTA EIXO (o engine deriva sozinho, não pergunta)
Lendo o STATE e o roteiro, formular a frase que a pessoa digitaria no Google. Frase de gente, não termo de SEO. <title>, <h1>, primeiro parágrafo e FAQ respondem TODOS a essa mesma pergunta, por ângulos diferentes. Reportar na metadata.

LEI DA RESPOSTA ADIANTADA
Nos primeiros 100 a 150 palavras — antes de contexto, história do mestre ou construção literária — a pergunta recebe RESPOSTA DIRETA em 2 ou 3 frases. O leitor online não espera. A beleza vem DEPOIS da utilidade.

⚠️ FILTRO DE TEMA (VIVO vs MORTO)
O Google responde perguntas simples direto na tela.
  ❌ MORTO: definição, glossário, biografia, resumo de livro.
  ✅ VIVO: a EXPERIÊNCIA descrita com precisão, a PRÁTICA executável, o ENQUADRAMENTO contraintuitivo.

ONDE O VÍDEO ENTRA
Na metade, depois de o leitor já ter recebido valor.
⚠️ FRASE DE ENTRADA OBRIGATÓRIA: o embed NUNCA aparece solto entre dois parágrafos. O parágrafo imediatamente anterior termina nomeando algo ESPECÍFICO que o vídeo tem e o texto não — a leitura linha por linha de uma passagem, a parábola que não sobrevive em texto, a voz. Uma frase só, concreta. NUNCA "assista para saber mais".

---

## 3. INVENTÁRIO DE MATÉRIA-PRIMA (ANTI-REPETIÇÃO)
Gerar ANTES de escrever. Aparece no output. Puxar do bloco do Script Engine e da Pergunta Eixo — nunca de repertório genérico.

BLOG-1  SEIS OBJETOS FÍSICOS: Coisas materiais que pertencem ao mundo deste tema específico. Objeto que caberia em qualquer artigo é o objeto errado.
BLOG-2  QUATRO CENAS COTIDIANAS: Momentos comuns ligados à dor. Universais. Zero referência brasileira. Se o LEDGER anterior nomeia um território, esse território está barrado.
BLOG-3  DUAS TENSÕES: Pares de opostos que este tema carrega. Eixo da tabela de contraste.
BLOG-4  CINCO PALAVRAS PROIBIDAS: As cinco palavras mais óbvias e previsíveis deste tema. Banidas de uso no texto para forçar caminhos neurais novos.
BLOG-5  A IMAGEM QUE ATRAVESSA: Objeto ou cena (de BLOG-1/BLOG-2) que aparece na resposta direta sem explicação e reaparece no fecho carregando um sentido novo. 

---

## 4. PASSE DE ARQUITETURA E E-E-A-T
Rodar antes de escrever a primeira frase. Aparece no output. Impede que o artigo gire em círculos dizendo a mesma coisa com palavras diferentes.

4a — A TESE
Uma frase falsificável. Alguém precisa poder discordar dela. "Tudo está conectado" não é tese. Toda seção ou avança essa frase, ou sai.

4b — O MAPA DE SEÇÕES (para cada <h2> do corpo):
  ENTRA  — o que o leitor entende ao chegar nesta seção
  SAI    — o que ele entende ao terminar
  MOVE   — o que mudou: a informação nova, inversão ou analogia
  DÍVIDA — o que esta seção paga de algo plantado antes

4c — REGRAS DE REJEIÇÃO
· ENTRA ≈ SAI → a seção repete. Reescrever ou cortar.
· TESTE DO EMBARALHAMENTO: Trocar duas seções do miolo mentalmente. Se o artigo continua fazendo sentido, a ordem é decorativa e a progressão é falsa. Reescrever.
· ESCALADA: cada SAI é uma afirmação maior que o SAI anterior.

4d — PRECISÃO FENOMENOLÓGICA (Via Legítima do E-E-A-T)
Não assine como pessoa física, mas comprove a "Experiência" pela precisão descritiva brutal. Descreva a textura física de uma emoção (o peso nos olhos, a hora exata da noite, o barulho do ambiente) que só quem passou pela dor reconheceria. Toda abstração exige âncora concreta.

---

## 5. MOTOR DE VARIAÇÃO — COMO 500 ARTIGOS SAEM DIFERENTES
Cálculos a partir do SEED_B (1-97) do Input. O motor sorteia como o artigo é estruturado.
SEED2 = (SEED_B × 3) mod 89
SEED3 = (SEED_B × 7) mod 83

TABELA DE ROTAÇÃO:
├── ARQ  — ARQUÉTIPO DO ARTIGO:  ((SEED_B × 3) mod 7) + 1   → §6
├── OPEN — MOVIMENTO DE ABERTURA: ((SEED2 × 5) mod 6) + 1   → §7
├── H2P  — PADRÃO DOS SUBTÍTULOS: ((SEED_B × 3) mod 5) + 1   → §8
├── ORD  — ORDEM DAS SEÇÕES:      ((SEED3 × 3) mod 4) + 1   → §9
├── PRA  — FORMATO DA PRÁTICA:    ((SEED2 × 3) mod 5) + 1   → §9
├── TAB  — EIXO DA TABELA:        ((SEED_B + SEED2) mod 4) + 1 → §9
└── FIM  — TIPO DE FECHO:         ((SEED2 + SEED3) mod 4) + 1 → §9

Reportar todos os índices na metadata. Se houver colisão (ex: ARQ igual ao último do LEDGER), avançar +1 circular.

---

## 6. OS 7 ARQUÉTIPOS DE ARTIGO (ARQ)
ARQ1 — DIAGNÓSTICO DO PADRÃO: Nomeia o mecanismo por trás do sintoma. Seção forte: Tabela.
ARQ2 — A INVERSÃO: "Tudo que tentou piorou — aqui está por quê." Mostra onde a crença quebra.
ARQ3 — O MÉTODO: Centrado na prática. Ensinamento vira procedimento executável. Seção forte: Prática em 5-7 passos.
ARQ4 — A LEITURA DE SITUAÇÃO: Pega UM momento específico do dia e disseca. Concreto.
ARQ5 — A PERGUNTA RESPONDIDA POR CAMADAS: Prática → Psicológica → Contemplativa.
ARQ6 — O ENSINAMENTO DESTRINCHADO: Traduz a citação do mestre linha por linha.
ARQ7 — O CONTRASTE DE DUAS VIAS: Solução do mundo vs a da tradição comparadas até o fim.

---

## 7. MOVIMENTO DE ABERTURA (OPEN)
Vem DEPOIS da resposta direta, nunca antes.
OPEN1 — A CENA RECONHECÍVEL: Instante universal em que o padrão aparece.
OPEN2 — O DESMONTE DO CONSELHO: Reconhece o conselho clichê, mostra onde quebra.
OPEN3 — O DADO ESTRANHO: Observação concreta do roteiro que reorganiza a percepção.
OPEN4 — A PILHA DE NEGAÇÕES: Afirma e desarma motivos errados em série.
OPEN5 — A DISTINÇÃO: Separa duas ações que a pessoa confunde.
OPEN6 — A PERGUNTA VIRADA: Reformula a pergunta que a pessoa fez.

---

## 8. PADRÃO DOS SUBTÍTULOS (H2P)
5 a 7 <h2> por artigo. NUNCA rótulo genérico. NUNCA usar frases prontas ou templates em inglês (funciona como função).
H2P1 — PERGUNTA DIRETA: Formulações interrogativas que focam no paradoxo da dor.
H2P2 — AFIRMAÇÃO CONTRAINTUITIVA: Sentenças que negam frontalmente o senso comum.
H2P3 — NOMEAÇÃO DO MECANISMO: O processo descrito com um nome funcional.
H2P4 — INSTRUÇÃO: Comandos verbais focados na observação imediata.
H2P5 — MISTO: Alterna interrogativas e afirmativas.
TODOS os <h2> do artigo seguem o mesmo padrão sorteado.

---

## 9. AS SEÇÕES OBRIGATÓRIAS E SUAS VARIAÇÕES
Todas aparecem em todo artigo. A ordem muda por ORD.

S1 — A PRÁTICA (PRA)
  Derivada do ensinamento, nunca genérica.
  PRA1 — Passos numerados reais.
  PRA2 — Auto-investigação ativa.
  PRA3 — Protocolo por gatilho ("quando X, faça Y").
  PRA4 — Exercício de uma frase (mantra) para o dia.
  PRA5 — Observação passiva total.

S2 — TABELA DE CONTRASTE (TAB)
  4 a 6 linhas. Formato altamente indexado pelo Google.
  TAB1 — O que a mente faz × O que o ensinamento propõe
  TAB2 — Como parece por fora × O que roda por dentro
  TAB3 — Solução comum × Por que ela alimenta o problema
  TAB4 — Antes de ver o padrão × Depois de ver

S3 — CONTEXTO DA FONTE E LINKS (1 parágrafo)
  Quem foi o mestre. Aqui entram OBRIGATORIAMENTE 1-2 LINKS EXTERNOS de autoridade absoluta (Wikipedia, Sacred-Texts, site oficial) via `rel="noopener"`. Sinal de E-E-A-T.

S4 — LINKS INTERNOS CONTEXTUAIS (Sessão)
  A partir dos slugs passados no LEDGER do Input, crie 2 a 3 links textuais INSERIDOS NATURALMENTE dentro da prosa do corpo do artigo, apontando para os conteúdos passados. Não use "Leia mais", use o próprio termo do texto como anchor text.

S5 — FAQ E SCHEMA
  3 a 4 variações da pergunta eixo. Resposta exata na PRIMEIRA frase, depois 1-2 de detalhe. Levará schema FAQPage.

S6 — CONTINUE READING
  Os links do LEDGER no fim do artigo, listados se houver. Omitir se "none".

S7 — FECHO (FIM)
  FIM1 — Definição revirada ("X não é A. É B.")
  FIM2 — Permissão alcançada.
  FIM3 — Imagem que colhe o artigo (BLOG-5).
  FIM4 — Estado final, em presente simples.
  1 a 2 frases. Nunca abre pergunta nova, NUNCA repete a frase do vídeo.

ORDEM DAS SEÇÕES DO MIOLO (ORD)
ORD1 — diagnóstico → contexto → prática → tabela
ORD2 — diagnóstico → tabela → contexto → prática
ORD3 — prática cedo → diagnóstico → tabela → contexto
ORD4 — tabela cedo → diagnóstico → contexto → prática

---

## 10. ANÚNCIOS (CMP E SLOTS)
⚠️ MONETIZAÇÃO E CMP: Lembre-se, o site precisa da plataforma CMP certificada no ar para faturar no EEE e UK. A Google exige isso desde 2024.

Os 3 slots de anúncio saem no HTML com comentário `<!-- ADSENSE SLOT N -->` para substituição futura.
SLOT 1 — Depois do 2º parágrafo do corpo (nunca no 1º, evita topo pesado).
SLOT 2 — Logo após o embed do vídeo.
SLOT 3 — Depende do MODO do input:
  Se MODO = ADSENSE → Slot 3 entra ENTRE o FAQ e o Continue Reading.
  Se MODO = FUNIL   → Slot 3 entra ANTES do FAQ, bem longe do CTA do final (clique acidental perto de CTA é tráfego inválido e pune a conta).

Todos com altura reservada 280px. Nunca use bordas tracejadas ou rótulos de "Ad" no CSS (cegueira de banner).

---

## 11. IMAGENS E RITMO VISUAL
DENSIDADE: 1 imagem a cada 350-500 palavras. Cenas originais do Leonardo AI do vídeo.
POSIÇÕES:
├── RETRATO DO MESTRE — ABAIXO do H1, pequeno (máx 180px). A legenda descreve QUEM ESTÁ NA FOTO (se for discípulo, diga).
├── IMAGEM 1 — depois do 1º ou 2º <h2>
├── IMAGEM 2 — próxima da prática ou tabela
└── IMAGEM 3 — perto do fecho
TODA <img> LEVA: alt, width, height, loading="lazy" e decoding="async" (menos a 1ª visível).

BLOCOS .beat (Pull Quotes Visuais):
As 4 âncoras P2-P5 do Script Engine entram literais, distribuídas pelo texto dentro de `<div class="sr-beat">`. Respiro visual a cada 350 palavras. Nunca dois seguidos.

---

## 12. RETENÇÃO E HUMANIZAÇÃO DE PROSA
G1 — ÍNDICE NAVEGÁVEL: Abaixo do resumo, lista das seções via link interno (`#ancora`). O id vai no H2. Zero exibição de "tempo de leitura".
G2 — BARRA DE PROGRESSO: Fixa no topo, CSS + JS inline.
G3 — RESUMO DE ENTRADA: 2 frases + 3 bullets com a promessa (O QUE, não o COMO). Fundo distinto, rótulo "Key takeaways" em mono.
G5 — PONTE ANTES DE <h2>: A última frase da seção anterior planta o que vem. Nunca "veremos no próximo tópico".

HUMANIZAÇÃO DE TEXTO LIDO (Diferente do TTS do YouTube):
A voz sintética precisa de frases super curtas. O texto para LER permite fluxo literário. Use travessões duplos (—) e dois-pontos. Variação natural do tamanho das sentenças. Evite paredes de texto (máx 4 frases por parágrafo). Negrito apenas em 2 pontos-chave por seção.

---

## 13. SEO E SCHEMA
SLUG: minúsculas, hifens, 3-6 palavras. Sem número de ordem ou data.
<title>: 50-60 caracteres, termo principal no início, termina com " | Soul Roar".
<meta description>: 140-155 caracteres. É promessa, não resumo.
CANONICAL: <link rel="canonical" href="https://thesoulroar.com/SLUG/">
SCHEMA: Um `<script type="application/ld+json">` com `@graph` incluindo: Article, VideoObject, FAQPage, BreadcrumbList. 
  ⚠️ Datas `datePublished` e `uploadDate` recebem OBRIGATORIAMENTE a data real de hoje.
  ⚠️ `publisher.logo.url` DEVE usar a URL LITERAL EXATA do logo.png definida nos fixos.

---

## 14. DESIGN — PARÂMETROS FIXOS E LEIS BLINDADAS
Corpo do artigo CLARO (texto escuro, fundo claro). Anúncios do AdSense perforam absurdamente melhor integrados ao fundo claro. A identidade dark vai para Hero, .beat e Footer.

PALETA (Uso literal)
  --paper:      #faf8f4   (fundo do corpo)
  --ink:        #1c1a18   (texto)
  --ink-soft:   #4a4640   (legendas)
  --black:      #0a0a0c   (hero, .beat, header, footer)
  --ivory:      #edeae3   (texto sobre fundo escuro)
  --amber:      #8a5a1f   (links e acentos SOBRE claro)
  --amber-lt:   #c98a3e   (acentos SOBRE escuro - hero/beat)
  --hairline:   rgba(28,26,24,0.12)

TIPOGRAFIA E LCP (Performance)
⚠️ PROIBIDO CARREGAR FONTE VIA `@import` DENTRO DO `<style>`. Isso bloqueia renderização e derruba LCP.
Use `<link rel="preconnect">` ANTES da tag `<style>` no Output (Item 5):
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@0,600;1,600&family=JetBrains+Mono&family=Literata:ital,wght@0,400;0,700;1,400&display=swap" rel="stylesheet">

LEI DO ISOLAMENTO DE CSS (Crítica no Elementor)
TUDO vai envelopado em `<div class="sr-root">`. TODO seletor CSS começa com `.sr-root `.
PROIBIDO estilizar `body`, `html`, `*` soltos. Variáveis vão em `.sr-root`, não em `:root`.

LEI DO FULL BLEED
Incluir SEMPRE dentro do CSS:
.sr-root {
  width: 100vw;
  max-width: 100vw;
  margin-left: calc(50% - 50vw);
  margin-right: calc(50% - 50vw);
  overflow-x: hidden;
}

REGRA BLINDADA DO LOGO
CSS exato para o Logo não quebrar:
.sr-root .sr-header {
  background: var(--black); padding: 16px 20px; text-align: center;
}
.sr-root .sr-header img {
  height: 44px !important;
  width: auto !important;
  max-width: 190px !important;
  display: block !important;
  margin: 0 auto !important;
}
HTML do Header (O <img> NÃO LEVA WIDTH/HEIGHT AQUI):
<header class="sr-header">
  <a href="https://thesoulroar.com">
    <img src="[LOGO — URL LITERAL DO §1]" alt="Soul Roar">
  </a>
</header>

---

## 15. TAMANHO E SOBREPOSIÇÃO
Corpo entre 1.400 e 2.200 palavras. Alvo ~1.700.

REGRA DAS 8 PALAVRAS (Anti-plágio de si mesmo):
NENHUMA sequência de 8 PALAVRAS OU MAIS do artigo pode ser idêntica ao roteiro original do YouTube (exceto as âncoras .beat e a citação).
Obrigatoriamente VARRER em janelas de 8 palavras e CONTAR a % antes de finalizar. Não estime. Se passar de 15%, reescreva de verdade (não apenas trocando sinônimos).

---

## 16. OUTPUT — NESTA ORDEM EXATA

0. CAMPOS FALTANDO (Apenas se faltou Video ID, Duração ou URLs. Se não faltou, OMITIR).
   ⚠️ substituir antes de publicar: [[FALTA: X]] — aparece em: ___

1. METADATA
   Pergunta eixo: "[frase]"
   [SEED_B: N] [SEED2: N] [SEED3: N]
   [ARQ: N] [OPEN: N] [H2P: N] [ORD: N] [PRA: N] [TAB: N] [FIM: N]
   Palavras do corpo: [N]
   Sobreposição com o roteiro: [N%] — CONTADA em janelas de 8 palavras.

2. SLUG
   uma linha

3. NOME DO ARQUIVO
   slug.html

4. TÍTULO E META (Para Rank Math "Editar Snippet")
   <title>: [texto] — [N chars]
   <meta description>: [texto] — [N chars]

5. BLOCO PARA O WIDGET HTML DO ELEMENTOR
   ENTREGAR APENAS num bloco único, sem DOCTYPE, html ou body:
   ├── <link rel="preconnect"> das fontes do Google
   ├── <style> ... </style> (CSS ISOLADO)
   ├── <script type="application/ld+json"> ... </script>
   ├── <div class="sr-root"> 
   │   (HTML: header, hero, artigo, H2s, .beat, tabelas, faq, embed, 3 slots Ads, links internos, footer)
   │   </div>
   └── <script> da barra de progresso (topo)

6. DESCRIÇÃO DO YOUTUBE
   Read the full written reflection: https://thesoulroar.com/SLUG/
   [2-3 linhas de resumo]
   [3-5 hashtags]

7. LEDGER
   LEDGER: slug=[slug] | titulo=[H1] | mestre=[nome] | ARQ=[N] | tema=[1 linha]

---

## 17. SELF-AUDIT SILENCIOSO
[ ] Passe IN/OUT e Tese executados?
[ ] Precisão Fenomenológica (E-E-A-T) com âncoras concretas para abstrações?
[ ] Abertura do artigo SEM exemplos americanos genéricos passados?
[ ] Links internos via LEDGER inseridos no contexto?
[ ] Fonte carregada via <link rel="preconnect"> fora do CSS?
[ ] Slots de anúncios posicionados baseados no MODO (Adsense vs Funil)?
[ ] Todas as leis blindadas de CSS e Logo (exatamente a URL literal do §1)?
[ ] Data de Schema = Hoje real (ISO 8601)?
Se algo estiver quebrado, conserte ANTES de outputar.

Fim do SOUL ROAR — BLOG ENGINE v3.0
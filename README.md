# seance


Um pequeno jogo de memória em Elixir — script único `seance.exs` que mostra uma sequência de letras e pede para o jogador repetir.

## O que é

`seance.exs` implementa um jogo de memória simples (Memory Game). A cada rodada o programa gera uma sequência aleatória de letras (A–F), exibe por um curto período e depois limpa a tela. O jogador deve digitar a sequência correta em maiúsculas. A cada acerto, a rodada aumenta e uma nova sequência mais longa é mostrada. Ao errar, o jogo termina exibindo a sequência correta e quantas rodadas foram completadas.

## Requisitos

- Elixir instalado (testado com Elixir 1.x).
- Terminal que suporte códigos ANSI para limpeza de tela e cores (PowerShell, bash, etc.).

## Como executar

No diretório do projeto, rode:

```powershell
elixir seance.exs
```

No Windows PowerShell use o comando acima. Em sistemas Unix-like (Linux, macOS) também funciona em terminais compatíveis.

## Como jogar

1. Ao iniciar, o programa mostra a sequência a memorizar (ex.: `ABC`).
2. Após um breve atraso a tela é limpa e você será solicitado a digitar a sequência.
3. Digite a sequência sem espaços, em maiúsculas (o script converte a entrada para maiúsculas automaticamente).
4. Se acertar, o jogo avança para a próxima rodada (sequência com +1 letra). Se errar, o jogo termina.

Exemplo de execução:

- Memorize: `BAF`
- Prompt: Digite a sequencia: (3 letras)
- Entrada do usuário: `BAF`  → Acerto, próxima rodada.

## Contrato (inputs / outputs / sucesso)

- Input: texto digitado pelo jogador via stdin (linha única).
- Output: mensagens no stdout informando sequência, sucesso/erro e número de rodadas completadas.
- Sucesso: jogador repete a sequência corretamente; o jogo incrementa a rodada.

## Possíveis personalizações

- Letras usadas: atualmente o conjunto é A..F (veja `rand_letter/0`). Para adicionar mais letras, altere o array em `rand_letter/0`.
- Tempos: as pausas para visualização usam `:timer.sleep/1` em milissegundos (1200ms para mostrar a sequência; 800ms antes da próxima rodada). Ajuste conforme desejado.

## Observações técnicas

- O script é modularizado em um módulo `MemoryGame` com funções privadas para geração de sequência, exibição, limpeza de tela e lógica do jogo.
- A limpeza usa `IO.ANSI.clear()` — em alguns ambientes a forma de limpar a tela pode variar.

## Contribuição e licença

Sinta-se à vontade para abrir issues ou contribuir com melhorias. Este repositório não especifica uma licença; adicione uma se desejar compartilhar o código sob termos específicos.

---

Arquivo principal: `seance.exs` — execute com `elixir seance.exs`.


# seance


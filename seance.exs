defmodule MemoryGame do
  def play(round \\ 1 ) do
    seq = generate_sequence(round)
    show_sequence(seq)
    clear()

    IO.puts("Digite a sequencia: (#{round} letras)")
    IO.puts(String.duplicate("*", round))

    ans =
      IO.gets("")
      |> to_string()
      |> String.trim()
      |> String.upcase()

    case ans do
      ^seq ->
        put_success("✅ Acertou! Próxima rodada... \n")
        :timer.sleep(800)
        play(round + 1)

      _ ->
        put_fail("💀 Os espiritos se zangaram! Sequencia correta: #{seq}")
        IO.puts("Rodadas completadas: #{round - 1}")
        :game_over
    end
  end

  defp rand_letter do
    Enum.random(~w(A B C D E F))
  end

  defp generate_sequence(n) do
    Enum.map_join(1..n, fn _ -> rand_letter() end)
  end

  defp show_sequence(seq) do
    IO.puts("Memorize: ")
    IO.puts(seq)
    :timer.sleep(1200)
  end

  defp clear do
    IO.ANSI.clear() |> IO.write()
  end

  defp put_success(msg), do: IO.puts(IO.ANSI.format([:green, msg]))
  defp put_fail(msg), do: IO.puts(IO.ANSI.format([:red, msg]))
end

MemoryGame.play()

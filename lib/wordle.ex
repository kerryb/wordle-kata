defmodule Wordle do
  def possible_words(dictionary, guesses, _answer) do
    Enum.filter(dictionary, &no_common_letters?(&1, guesses))
  end

  defp no_common_letters?(word, guesses) do
    not Enum.any?(guesses, &common_letters?(&1, word))
  end

  defp common_letters?(word_1, word_2) do
    Enum.any?(String.codepoints(word_1), &(&1 in String.codepoints(word_2)))
  end
end

defmodule WordleTest do
  use ExUnit.Case

  describe "Wordle.possible_words/3" do
    test "returns all words if there are no guesses" do
      assert Wordle.possible_words(["hello", "world"], [], "hello") == ["hello", "world"]
    end

    test "returns words that don't share any letters with any guesses if the guesses don't match any letters in the answer" do
      assert Wordle.possible_words(
               ["hello", "world", "quack", "moist", "glaze"],
               ["drink", "stump"],
               "hello"
             ) == ["hello", "glaze"]
    end
  end
end

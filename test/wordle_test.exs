defmodule WordleTest do
  use ExUnit.Case

  describe "Wordle.possible_words/3" do
    test "returns all words if there are no guesses" do
      assert Wordle.possible_words(["hello", "world"], [], "hello") == ["hello", "world"]
    end
  end
end

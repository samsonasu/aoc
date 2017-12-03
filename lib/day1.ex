defmodule Day1 do

  def go(input) do
    vals = String.graphemes(input)
    acc = day1_acc(vals, 0)
    day1_acc([List.first(vals), List.last(vals)], acc)
  end

  defp day1_acc([first | rest], acc) do
    add = case List.first(rest) do
      ^first -> String.to_integer(first)
      _ -> 0
    end
    day1_acc(rest, acc + add)
  end

  defp day1_acc([], acc) do
    acc
  end
end

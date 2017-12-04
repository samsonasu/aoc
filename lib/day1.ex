defmodule Day1 do

  def go(input) do
    vals = String.graphemes(input)
    acc = day1_acc(vals, 0)
    day1_acc([List.first(vals), List.last(vals)], acc)
  end

  def go2 do
    {:ok, input} = File.read "data/day1.input"
    part2 input
  end

  def part2(input) do
    vals = String.graphemes(input)
      |> Enum.map(&String.to_integer(&1))
    part2_acc(vals, 0 , 0)
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

  defp part2_acc(list, position, acc) do
    len = length(list)
    if position <= len do
      target = Enum.at(list, position)
      halfway = Enum.at(list, rem(div(len,2)  + position, len))
      add = case target do
        ^halfway -> halfway
        _ -> 0
      end
      part2_acc(list, position+1, acc + add)
    else
      acc
    end
  end
end

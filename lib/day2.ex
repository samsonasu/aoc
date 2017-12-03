defmodule Day2 do

  def win do
    {:ok, input} = File.read "data/day2.input"
    go input
  end

  def go(input) do
    String.split(input, "\n")
      |> Enum.map(&Day2.row_check(&1))
      |> Enum.sum
  end

  def row_check(""), do: 0

  def row_check(input) do
    vals = Regex.split(~r/\s+/, input)
     |> Enum.map(&String.to_integer(&1))
     |> Enum.sort
    List.last(vals) - List.first(vals)
  end
end

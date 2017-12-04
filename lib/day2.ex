defmodule Day2 do

  def win do
    {:ok, input} = File.read "data/day2.input"
    go input
  end

  def win2 do
    {:ok, input} = File.read "data/day2.input"
    go2 input
  end

  def go2(input) do
    String.split(input, "\n")
      |> Enum.map(&Day2.row_check2(&1))
      |> Enum.sum
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

  def row_check2(""), do: 0

  def row_check2(input) do
    vals = Regex.split(~r/\s+/, input)
     |> Enum.map(&String.to_integer(&1))
     |> Enum.sort
    acc2(vals, 0)
  end

  defp acc2([], acc), do: acc
  defp acc2([first | rest], acc) do
    add = div_recur(first, rest, 0)
    IO.puts("out of div_recur, acc is now #{acc + add}")
    acc2(rest, acc + add)
  end

  defp div_recur(divisor, [], acc), do: acc
  defp div_recur(divisor, [first | rest], acc) do
    add = case rem(first,divisor) do
      0 -> div(first,divisor)
      _ -> 0
    end
    IO.puts "Adding #{add} because #{first}/#{divisor}; acc is #{acc + add}"
    div_recur(divisor, rest, acc + add)
  end

end

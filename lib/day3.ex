defmodule Day3 do

  def go do
    IO.puts dist(xy(312051))
  end

  def dist({x,y}) do
    abs(x) + abs(y)
  end

  def xy(1), do: {0,0}

  def xy(num) do
    corner = nearest_corner(num)
    sqrt = isqrt(corner)
    basexy = cornerd(corner)
    cond do
      num > corner-sqrt -> {basexy - (corner - num), -basexy} #bottom row
      num > corner - 2*(sqrt-1) -> {-basexy, -basexy +(corner - (sqrt-1) - num) }
      num > corner - 3*(sqrt-1) -> {-basexy + (corner - (sqrt-1)*2 - num), basexy }
      num > corner - 4*(sqrt-1) -> {basexy, basexy - (corner - (sqrt-1)*3 - num) }
      true -> {0,0}
    end
  end


  def nearest_corner(num) do
    root = :math.sqrt(num) |> Float.ceil |> trunc
    base = case rem(root, 2) do
      0 -> root + 1
      1 -> root
    end

    base * base
  end

  defp cornerd(n) do
    (isqrt(n)-1)/2 |> trunc
  end

  defp isqrt(num) do
   :math.sqrt(num) |> trunc
  end


end

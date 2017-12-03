defmodule Day2Test do
  use ExUnit.Case

  test "checksum for a row" do
    assert Day2.row_check("5 1 9 5") == 8
    assert Day2.row_check("7 5 3") == 4
    assert Day2.row_check("2 4 6 8") == 6
  end

  test "can handle the whole sheet" do
    sheet = ~s"""
5 1 9 5
7 5 3
2 4 6 8
"""
    assert Day2.go(sheet) == 18
  end

end

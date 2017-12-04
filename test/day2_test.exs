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

  test "part2 only looks at even numbers" do
    assert Day2.row_check2("5 9 2 8") == 4
    assert Day2.row_check2("9 4 7 3") == 3
    assert Day2.row_check2("3 8 6 5") == 2
  end

  test "part2 handles the whole sheet" do
    sheet = ~s"""
5 9 2 8
9 4 7 3
3 8 6 5
"""
    assert Day2.go2(sheet) == 9
  end

end

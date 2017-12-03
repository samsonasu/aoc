defmodule AocTest do
  use ExUnit.Case
  doctest Aoc


  test "day1 ex1" do
    assert Aoc.day1("1122") == 3
  end
  test "day1 ex2" do
    assert Aoc.day1("1111") == 4
  end
  test "day1 ex3" do
    assert Aoc.day1("1234") == 0
  end
  test "day1 ex4" do
    assert Aoc.day1("91212129") == 9
  end
end

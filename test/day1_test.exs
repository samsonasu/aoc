defmodule Day1Test do
  use ExUnit.Case

  test "day1 ex1" do
    assert Day1.go("1122") == 3
  end
  test "day1 ex2" do
    assert Day1.go("1111") == 4
  end
  test "day1 ex3" do
    assert Day1.go("1234") == 0
  end
  test "day1 ex4" do
    assert Day1.go("91212129") == 9
  end
end

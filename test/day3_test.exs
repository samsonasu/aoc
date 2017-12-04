defmodule Day3Test do
  use ExUnit.Case

  test "can find the distance given an xy" do
    assert Day3.dist({0,0}) == 0
    assert Day3.dist({1,2}) == 3
    assert Day3.dist({0,-2}) == 2
    assert Day3.dist(Day3.xy(1024)) == 31
  end

  test "can calculate the xy of a number" do
    assert Day3.xy(1) == {0,0}
    assert Day3.xy(2) == {1,0}
    assert Day3.xy(3) == {1,1}
    assert Day3.xy(4) == {0,1}
    assert Day3.xy(5) == {-1,1}
    assert Day3.xy(6) == {-1,0}
    assert Day3.xy(11) == {2,0}
    assert Day3.xy(38) == {-3,2}
    assert Day3.xy(49) == {3,-3}
  end

  test "can calculate the xy of a corner" do
    assert Day3.xy(1) == {0,0}
    assert Day3.xy(9) == {1,-1}
    assert Day3.xy(25) == {2,-2}
    assert Day3.xy(49) == {3,-3}
  end

  test "can calculate xy of a number on the bottom row" do
    assert Day3.xy(48) == {2,-3}
    assert Day3.xy(24) == {1,-2}
    assert Day3.xy(7) == {-1,-1}
  end
  test "can calculate xy of a number on the top row" do
    assert Day3.xy(34) == {0,3}
    assert Day3.xy(13) == {2,2}
    assert Day3.xy(5) == {-1,1}
  end

  test "can find xy for the left column" do
    assert Day3.xy(40) == {-3,0}
    assert Day3.xy(21) == {-2,-2}
  end

  test "can find xy for the right column" do
    assert Day3.xy(26) == {3,-2}
    assert Day3.xy(28) == {3,0}
    assert Day3.xy(12) == {2,1}
    assert Day3.xy(2) == {1,0}
  end

  test "can find the nearest corner" do
    assert Day3.nearest_corner(1) == 1
    assert Day3.nearest_corner(2) == 9
    assert Day3.nearest_corner(4) == 9
    assert Day3.nearest_corner(9) == 9
    assert Day3.nearest_corner(10) == 25
    assert Day3.nearest_corner(22) == 25
    assert Day3.nearest_corner(26) == 49
    assert Day3.nearest_corner(32) == 49
  end
end


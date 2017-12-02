defmodule Aoc2017Test.Day2 do
  use ExUnit.Case
  doctest Aoc2017.Day2
  @moduletag :day2

  test "example 1" do
    assert 3 == Aoc2017.Day2.part1(1122)
  end

  test "example 2" do
    assert 4 == Aoc2017.Day2.part1(1111)
  end

  test "example 3" do
    assert 0 == Aoc2017.Day2.part1(1234)
  end

  test "example 4" do
    assert 9 == Aoc2017.Day2.part1(91212129)
  end

  test "part1" do
    res = "data/day2.txt"
    |> File.read!
    |> String.strip
    |> Aoc2017.Day2.part1

    IO.puts "Day 2 part 1: #{res}"
  end

  test "part 2 example 1" do
    assert 6 == Aoc2017.Day2.part2(1212)
  end

  test "part 2 example 2" do
    assert 0 == Aoc2017.Day2.part2(1221)
  end

  test "part 2 example 3" do
    assert 4 == Aoc2017.Day2.part2(123425)
  end

  test "part 2 example 4" do
    assert 12 == Aoc2017.Day2.part2(123123)
  end

  test "part 2 example 5" do
    assert 4 == Aoc2017.Day2.part2(12131415)
  end

  test "part2" do
    res = "data/day2.txt"
    |> File.read!
    |> String.strip
    |> Aoc2017.Day2.part2

    IO.puts "Day 2 part 2: #{res}"
  end
end
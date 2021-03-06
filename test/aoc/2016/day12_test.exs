defmodule Aoc2016.Day12Test do
  use ExUnit.Case
  doctest Aoc2016.Day12
  alias Aoc2016.Day12
  @moduletag [day12: true, year2016: true]

  test "sample copy number" do
    storage = %Day12{}
    |> Day12.instruct("cpy 41 a")

    assert 41 == Day12.get_register(storage, "a")
  end

  test "sample copy register" do
    storage = %Day12{}
    |> Day12.set_register("b", 12)
    |> Day12.instruct("cpy b a")

    assert 12 == Day12.get_register(storage, "a")
  end

  test "increment" do
    storage = %Day12{}
    |> Day12.set_register("b", 12)
    |> Day12.instruct("inc b")

    assert 13 == Day12.get_register(storage, "b")
  end

  test "decrement" do
    storage = %Day12{}
    |> Day12.set_register("b", 12)
    |> Day12.instruct("dec b")

    assert 11 == Day12.get_register(storage, "b")
  end

  test "jnz negative" do
    storage = %Day12{line: 50}
    |> Day12.jnz(10, -5)

    assert 45 == storage.line
  end

  test "jnz positive" do
    storage = %Day12{line: 50}
    |> Day12.jnz(10, 5)

    assert 55 == storage.line
  end

  test "jnz 0 for register" do
    storage = %Day12{line: 50}
    |> Day12.jnz(0, 5)

    assert 51 == storage.line
  end

  test "jnz reads register" do
    storage = %Day12{line: 50}
    |> Day12.set_register("b", 10)
    |> Day12.jnz("b", 5)

    assert 55 == storage.line
  end

  test "jnz reads 0 value from register" do
    storage = %Day12{line: 50}
    |> Day12.set_register("b", 0)
    |> Day12.jnz("b", 5)

    assert 51 == storage.line
  end
end

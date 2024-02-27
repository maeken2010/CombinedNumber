defmodule CombinedNumberTest do
  use ExUnit.Case
  doctest CombinedNumber

  test "chain number" do
    assert CombinedNumber.chain_number([1, 2, 3]) == "123"
  end

  test "sort_max" do
    assert CombinedNumber.sort_max([5, 50, 56]) == [56, 5, 50]
  end

  test "combined number" do
    assert CombinedNumber.answer([5, 50, 56]) == "56550"
    assert CombinedNumber.answer([420, 42, 423]) == "42423420"
  end
end

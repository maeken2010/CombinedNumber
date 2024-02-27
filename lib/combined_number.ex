defmodule CombinedNumber do
  @moduledoc """
  Documentation for `CombinedNumber`.
  """

  def chain_number(list) do
    combine_string_and_number = fn(x, acc) -> acc <> Integer.to_string(x) end
    Enum.reduce(list, "", combine_string_and_number)
  end

  def sort_max(list) do
    to_str = &(String.duplicate(Integer.to_string(&1), 10))
    Enum.sort(list, fn(x, y) -> to_str.(x) > to_str.(y) end) 
  end

  def answer(list) do
    sort_max(list)
    |> chain_number()
  end
end

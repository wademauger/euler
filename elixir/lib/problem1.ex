defmodule Problem1 do
  
  @doc"""
  Problem 1: If we list all the natural numbers below 10 that are multiples
  of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
  Find the sum of all the multiples of 3 or 5 below 1000.

    >iex 233168
    233168
  """
  def solve do
    Enum.reduce((1..999), 0, fn(num, acc) -> if( rem(num, 3)==0 || rem(num, 5)==0, do: acc + num, else: acc) end)
  end

end

IO.puts Problem1.solve()

defmodule Problem2 do

  def solve do
    fib(0, 1, 0, 4_000_000)
  end

  defp fib(prev, curr, acc, limit) when
    curr < limit and
    rem(prev + curr, 2) != 0 do
      sum = prev + curr
      fib(curr, sum, acc, limit)
  end

  defp fib(prev, curr, acc, limit) when
    curr < limit and
    rem(prev + curr, 2) == 0 do
      sum = prev + curr
      acc = sum + acc
      fib(curr, sum, acc, limit)
  end

  defp fib(_, curr, acc, limit) when curr >= limit do
    acc
  end

end

IO.puts Problem2.solve()

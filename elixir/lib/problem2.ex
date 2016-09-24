defmodule Problem2 do

  @doc """
  Problem 2: Each new term in the Fibonacci sequence is generated by
  adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
    1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
  By considering the terms in the Fibonacci sequence whose
  values do not exceed four million, find the sum of the even-valued terms.

    >iex solve
    4613732
  """
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

Problem2.solve |> IO.puts

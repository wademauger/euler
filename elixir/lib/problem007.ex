defmodule Problem7 do

  require Prime

  def solve do
    find_prime(1, 0)
  end

  defp find_prime(curr, primesFound) when primesFound == 10_000 do
    cond do
      curr |> Prime.prime? ->
        curr
      true ->
        find_prime(curr + 1, primesFound)
    end
  end
  defp find_prime(curr, primesFound) do
    cond do
      curr |> Prime.prime? ->
        find_prime(curr + 1, primesFound + 1)
      true ->
        find_prime(curr + 1, primesFound)
    end
  end

end

IO.puts "Problem 7: #{Problem7.solve}"

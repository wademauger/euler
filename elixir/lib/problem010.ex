defmodule Problem10 do

  require Prime

  def solve do
    findPrimes(1_999_999, 2)
  end

  defp findPrimes(curr, sum) do
    cond do
      curr <= 1 ->
        sum
      Prime.prime?(curr) ->
        findPrimes(curr - 2, curr + sum)
      true ->
        findPrimes(curr - 2, sum)
    end
  end

end

IO.puts "Problem 10 : #{Problem10.solve}"

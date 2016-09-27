defmodule Problem6 do
  
  def solve do
    sumOfSquares = Enum.reduce(1..100, 0, fn(x, acc) -> (x * x) + acc end)
    squareOfSum = :math.pow(Enum.reduce(1..100, 0, fn(x, acc) -> x + acc end), 2)
    IO.puts sumOfSquares
    IO.puts squareOfSum
    round(squareOfSum - sumOfSquares)
  end

end

IO.puts "Problem 6: #{Problem6.solve}"

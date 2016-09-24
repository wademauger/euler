defmodule Problem3 do

  def solve do
    factor(600851475143) |> Enum.max()
  end

  def factor(num), do: do_factor(num,2,[])
  def do_factor(num, div, acc) when div > num, do: acc
  def do_factor(num, div, acc) when rem(num,div) == 0, do: do_factor( div(num, div), div, [div|acc])
  def do_factor(num, div, acc) when rem(num, div) != 0, do: do_factor(num, div+1, acc)

end

IO.puts Problem3.solve

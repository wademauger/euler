defmodule Problem9 do
  def solve do
    ab = find_ab(1_000, 1_000)
    a = ab[:a]
    b = ab[:b]
    c = 1_000 - a - b
    a * b * c
  end

  defp ab?(a, b) do
    :math.pow(a, 2) + :math.pow(b, 2) == :math.pow((1000 - a - b), 2)
  end

  defp find_ab(a, b) do
    cond do
      ab?(a, b) ->
        %{a: a, b: b}
      a > 1 ->
        find_ab(a-1, b)
      true ->
        find_ab(1000, b-1)
    end
  end

end

IO.puts "Problem 9 : #{Problem9.solve}"

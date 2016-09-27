defmodule Problem5 do
  
  def solve do
    find_number
  end

  defp greedy_twenty_divisible?(num, level) do
    cond do
      level <= 1 ->
        true
      rem(num, level) == 0 ->
        greedy_twenty_divisible?(num, level-1)
      true ->
        false
    end
  end

  defp find_number, do: find_number 20
  defp find_number num do
    cond do
      num |> greedy_twenty_divisible?(20) ->
        num
      true ->
        num + 20 |> find_number
    end
  end

end

IO.puts "Problem 5: #{Problem5.solve}"

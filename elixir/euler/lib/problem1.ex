defmodule Problem1 do

  def solve do
    Enum.reduce((1..999), 0, fn(num, acc) -> if( rem(num, 3)==0 || rem(num, 5)==0, do: acc + num, else: acc) end)
  end

end

IO.puts Problem1.solve()

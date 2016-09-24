multiples = Enum.reduce((1..999), 0, fn(number, accumulator) -> if( rem(number, 3)==0 || rem(number, 5)==0, do: accumulator + number, else: accumulator) end)
IO.puts multiples

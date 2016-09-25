defmodule Prime do

  @doc"""
  returns true if the given number is prime.

    iex> prime(1)
    false

    iex> prime(2)
    true
    
    iex> prime(3)
    true

    iex> prime(5)
    true
    
    iex> prime(10)
    false
    
  """
  def prime?(num) when num <= 1, do: false
  def prime?(num) when num == 2 or num == 3, do: true
  def prime?(num) when rem(num, 2) == 0, do: false
  def prime?(num) do
    do_prime(num, 3)
  end

  defp do_prime(num, counter) when rem(num, counter) == 0, do: false
  defp do_prime(num, counter) when (counter * counter) <= num do
    do_prime(num, counter + 2)
  end
  defp do_prime(num, counter), do: true

  def test do
    IO.puts prime?(1)   # false
    IO.puts prime?(2)   # true
    IO.puts prime?(3)   # true
    IO.puts prime?(4)   # false
    IO.puts prime?(5)   # true
    IO.puts prime?(6)   # false
    IO.puts prime?(7)   # true
    IO.puts prime?(8)   # false
    IO.puts prime?(9)   # false
    IO.puts prime?(10)  # false
    IO.puts prime?(11)  # true
    IO.puts prime?(12)  # false
    IO.puts prime?(467) # true
    IO.puts prime?(468) # false
    IO.puts prime?(733) # true
  end
end

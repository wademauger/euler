defmodule Problem11 do

  def solve do
    grid = getGrid()
    x = Enum.to_list 0..19
    y = Enum.to_list 0..19
    Enum.map( x, fn
      x -> Enum.map y, fn
        y -> targetToProducts grid, x, y
      end
    end)
    |> List.flatten
    |> Enum.reduce(0, fn x, acc -> if (x > acc), do: x, else: acc end)
  end

  defp getGrid do
    File.read!("./lib/problem011Grid.txt")
    |> String.split("\n")
    |> Enum.map(fn str -> String.split str, " " end)
    |> Enum.filter(fn [""] -> false; _ -> true end)
    |> Enum.map(fn list -> 
      Enum.map(list, fn str -> String.to_integer str end)
    end)
    |> Enum.map(fn list -> List.to_tuple list end)
    |> List.to_tuple
  end

  defp targetToProducts(grid, x, y) do
    rows = [
      getNeighborsRight(grid, x, y),
      getNeighborsDown(grid, x, y),
      getNeighborsDiagonalLeft(grid, x, y),
      getNeighborsDiagonalRight(grid, x, y),
    ]
    Enum.map(rows, fn
      {:ok, a, b, c, d} -> a * b * c * d
      {:error, _} -> 0
    end)
  end

  defp getNeighborsRight(grid, x, y) do
    try do
      target = grid
               |> elem(y)
               |> elem(x)
      first = grid
              |> elem(y)
              |> elem(x+1)
      second = grid
               |> elem(y)
               |> elem(x+2)
      third = grid
              |> elem(y)
              |> elem(x+3)
      {:ok, target, first, second, third}
    rescue
      _ -> {:error, "Out of grid bounds"}
    end
  end

  defp getNeighborsDown(grid, x, y) do
    try do
      target = grid
               |> elem(y)
               |> elem(x)
      first = grid
              |> elem(y+1)
              |> elem(x)
      second = grid
               |> elem(y+2)
               |> elem(x)
      third = grid
              |> elem(y+3)
              |> elem(x)
      {:ok, target, first, second, third}
    rescue
      _ -> {:error, "Out of grid bounds"}
    end
  end

  defp getNeighborsDiagonalLeft(grid, x, y) do
    try do
      target = grid
               |> elem(y)
               |> elem(x)
      first = grid
              |> elem(y-1)
              |> elem(x+1)
      second = grid
               |> elem(y-2)
               |> elem(x+2)
      third = grid
              |> elem(y-3)
              |> elem(x+3)
      {:ok, target, first, second, third}
    rescue
      _ -> {:error, "Out of grid bounds"}
    end
  end

  defp getNeighborsDiagonalRight(grid, x, y) do
    try do
      target = grid
               |> elem(y)
               |> elem(x)
      first = grid
              |> elem(y+1)
              |> elem(x+1)
      second = grid
               |> elem(y+2)
               |> elem(x+2)
      third = grid
              |> elem(y+3)
              |> elem(x+3)
      {:ok, target, first, second, third}
    rescue
      _ -> {:error, "Out of grid bounds"}
    end
  end

end

IO.puts "Problem 11 : #{Problem11.solve}"

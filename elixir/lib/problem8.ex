defmodule Problem8 do

  import ThousandNums

  def solve do
    one = nums
          |> String.at(0)
          |> String.to_integer
    two = nums
          |> String.at(1)
          |> String.to_integer
    three = nums
            |> String.at(2)
            |> String.to_integer
    four = nums
           |> String.at(3)
           |> String.to_integer
    five = nums
           |> String.at(4)
           |> String.to_integer
    six = nums
          |> String.at(5)
          |> String.to_integer
    seven = nums
            |> String.at(6)
            |> String.to_integer
    eight = nums
            |> String.at(7)
            |> String.to_integer
    nine = nums
           |> String.at(8)
           |> String.to_integer
    ten = nums
          |> String.at(9)
          |> String.to_integer
    eleven = nums
             |> String.at(10)
             |> String.to_integer
    twelve = nums
             |> String.at(11)
             |> String.to_integer
    thirteen = nums
               |> String.at(12)
               |> String.to_integer
    thirteen_nums(one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, 0, 12, nums)
  end

  defp thirteen_nums(one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, greatest_sum, head_posiiton, num_list) do
    this_sum = one * two * three * four * five * six * seven * eight * nine * ten * eleven * twelve * thirteen
    cond do
      head_posiiton >= 999 ->
        greatest_sum
      this_sum > greatest_sum ->
        head_posiiton = head_posiiton + 1
        new_head = num_list
                   |> String.at(head_posiiton)
                   |> String.to_integer
        thirteen_nums(two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, new_head, this_sum, head_posiiton, num_list)
      true ->
        head_posiiton = head_posiiton + 1
        new_head = num_list
                   |> String.at(head_posiiton)
                   |> String.to_integer
        thirteen_nums(two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, new_head, greatest_sum, head_posiiton, num_list)
    end
  end

end

Problem8.solve |> IO.puts

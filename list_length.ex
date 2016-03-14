defmodule ListLength do

  #returns this length of the provided list
  def list_len(list) do
    list_len(0, list)
  end

  defp list_len(size, []) do
    size
  end

  defp list_len(size, [_|tail]) do
    list_len(size+1, tail)
  end
  #returns a list of all of the numbers between the start and finish
  def range(start, finish) do
    range(start, finish,[])
  end


  defp range(start, finish, list) when start == finish do
      [start | list]
  end

  defp range(start, finish, list) do
     range(start+1, finish, [start | list])
  end

  #Takes an input list and returns a list of only the positive numbers
  def positive(total_list) do
    positive([], total_list)
  end
  defp positive(pos_list, []) do
    pos_list
  end
  defp positive(pos_list, [head | tail]) when head>0 do
        IO.puts("Head value was positive #{head}")
        positive([head | pos_list], tail)
  end
  defp positive(pos_list, [_ | tail])  do
        IO.puts("Head value was negative ")
        positive( pos_list, tail)
  end
end

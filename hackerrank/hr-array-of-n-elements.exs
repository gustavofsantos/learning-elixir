defmodule Solution do
  def genList(val) do
    0..(val - 1) |> Enum.to_list
  end

  def main do
    IO.read(:stdio, :line)
    |> String.trim
    |> String.to_integer
    |> genList
    |> inspect
    |> IO.puts
  end
end

Solution.main
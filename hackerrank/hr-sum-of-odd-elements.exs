defmodule Solution do
  def filterOdds(arr) do
    Enum.filter(arr, fn(elem) -> rem(elem, 2) != 0 end)
  end

  def process(args) do
    args |> filterOdds |> Enum.sum
  end

  def toIntList(listString) do
    Enum.map(listString, fn (s) -> String.to_integer(s) end)
  end

  def main do
    IO.read(:stdio, :all)
    |> String.split
    |> toIntList
    |> process
    |> IO.puts
  end
end

Solution.main
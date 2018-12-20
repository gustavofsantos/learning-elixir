defmodule Solution do
  def filterLowerThan(arr, num) do
    Enum.filter(arr, fn (el) -> el < num end)
  end

  def process(args) do
    [num | arr] = args
    result = filterLowerThan(arr, num)
    Enum.join(result, "\n")
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
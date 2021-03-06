defmodule Solution do
  def filterIndexOdd(arr) do
    arr |> Enum.drop_every(2)
  end

  def process(args) do
    result = filterIndexOdd(args)
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
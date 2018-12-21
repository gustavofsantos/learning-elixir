defmodule Solution do
  def process(arr) do
    arr |> Enum.map(&abs(&1)) |> Enum.join("\n")
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
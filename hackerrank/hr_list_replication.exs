defmodule Solution do
  def replicate(num, arr) do
    Enum.reduce(arr, [], fn (elem, l) -> Enum.concat(l, List.duplicate(elem, num)) end)
  end

  def toIntList(listString) do
    Enum.map(listString, fn (s) -> String.to_integer(s) end)
  end

  def process(args) do
    [num | arr] = args

    repl = replicate(num, arr)
    Enum.join(repl, "\n")
  end

  def main do
    IO.read(:stdio, :all)
    |> String.split()
    |> toIntList
    |> process
    |> IO.puts()
  end
end

Solution.main()

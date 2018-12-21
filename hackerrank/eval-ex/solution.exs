defmodule Solution do
  def factorial(number) do
    1..number |> Enum.reduce(&(&1 * &2))
  end

  def expansion(number, i) do
    case i do
      0 -> 1
      x -> :math.pow(number, x) / factorial(x) + expansion(number, x - 1)
    end
  end

  def process(arr) do
    arr
    |> Enum.map( fn x -> expansion(x, 9) end )
    |> Enum.map(fn x -> Float.ceil(x, 4) end)
    |> Enum.join("\n")
  end

  def toIntList(listString) do
    Enum.map(listString, fn (s) -> String.to_integer(s) end)
  end

  def main do
    IO.read(:stdio, :line)
    |> String.to_integer
    |> 1..&1
    |> IO.read(:stdio, :line)
    |> String.to_integer
    |> process
    |> IO.puts
  end
end

Solution.main
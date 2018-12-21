defmodule Solution do
  def main do
    IO.read(:stdio, :all)
    |> String.split
    |> length
    |> IO.puts
  end
end

Solution.main
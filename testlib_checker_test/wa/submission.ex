defmodule MyModule do
  def main do
    input = IO.gets("") |> String.trim()
    n = String.to_integer(input)

    arr = IO.gets("") |> String.trim() |> String.split(" ") |> Enum.map(&String.to_integer/1)

    max_index = 0
    max_element = arr |> Enum.at(0)
    for i <- 1..n-1 do
      if arr |> Enum.at(i) > max_element do
        max_index = i
        max_element = arr |> Enum.at(i)
      end
    end

    IO.puts("#{-1}")
  end
end

MyModule.main()

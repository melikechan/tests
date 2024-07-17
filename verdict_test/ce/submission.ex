defmodule MyModule do
  def main do
    input = IO.gets("") |> String.trim()
    n = String.to_integer(input)

    IO.puts("#{n-1}"
  end
end

MyModule.main()

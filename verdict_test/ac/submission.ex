defmodule MyModule do
  def main do
    input = IO.gets("") |> String.trim()
    n = String.to_integer(input)

    IO.puts("#{n}")
  end
end

MyModule.main()

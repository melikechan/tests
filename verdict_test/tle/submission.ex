defmodule MyModule do
  def main do
    input = IO.gets("") |> String.trim()
    n = String.to_integer(input)

    while(n)
  end

  def while(n) do
    IO.puts("#{n}")
    while(n)
  end

end

MyModule.main()

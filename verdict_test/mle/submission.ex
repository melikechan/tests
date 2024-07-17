defmodule MyModule do
  def main do
    list = Enum.to_list(1..1000000)
    for i <- list do
      IO.puts("#{i}")
    end
  end
end

MyModule.main()

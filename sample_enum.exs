defmodule Sample.Enum do
  # def first(list) do
  #   hd(list)
  # end

  # def first([]) do
  #   nil
  # end

  # def first([head | _]) do
  #   head
  # end

  # def first([]), do: nil

  # def first([head| _]), do: head

  # Guard clause
  # def first(list) when length(list) == 0, do: nil

  # def first([head| _]), do: head

  #=================
  # Default params
  #=================
  def add(list, val \\ 0) do
    trace(val)
    [val | list]
  end
  # Sample.Enum.add([:one, :two])
  # Sample.Enum.add(zero, [:one, :two])

  def first(list, val \\ nil)
  def first([head| _], _), do: head
  def first([], val), do: val
  # Sample.Enum.first([1,2,3]) # 1
  # Sample.Enum.first([1,2,3], 0) # 1
  # Sample.Enum.first([],5) # 5
  # Sample.Enum.first([]) # nil

  #=================
  # Private functions
  #=================
  defp trace(value) do
    IO.puts("The valuepassed was: #{value}")
  end
  # Sample.Enum.add([], :helo)
  # Sample.Enum.trace(:helo) # Erros
end

# first/1
# {function name} / {number of parameters}

  # def some_function(quantity, {_,_,price}) do
  #   quantity * price
  # end

  # def some_function(quantity, book) do
  #   quantity * elem(book, 2)
  # end

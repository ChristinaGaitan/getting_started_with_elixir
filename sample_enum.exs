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

  def first([]), do: nil

  def first([head| _]), do: head

  # def some_function(quantity, {_,_,price}) do
  #   quantity * price
  # end

  # def some_function(quantity, book) do
  #   quantity * elem(book, 2)
  # end
end

# first/1
# {function name} / {number of parameters}

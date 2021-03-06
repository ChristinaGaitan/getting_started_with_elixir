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

  #=================
  # Functions as first class citizens
  #=================
  # list = [1, 2, 3, 4]
  # # Sample.Utils = example module
  # # We use & and arity for the needed function
  # Enum.map(list, &Sample.Utils.square/1) # [1, 4, 9, 16]
  # Enum.reduce(list, 0, &Sample.Utils.sum/1) # 10

  #=================
  # Annonymous Functions
  #=================
  # list = [1, 2, 3, 4]
  # # Lambda style
  # Enum.map(list, fn(x) -> x * x end) # [1, 4, 9, 16]
  # Enum.reduce(list, 0, fn(x, acc) -> acc + x end) # 10

  # # We can use the capture operator &
  # # Annonymous style
  # list = [1, 2, 3, 4]
  # Enum.map(list, &(&1 * &1)) # [1, 4, 9, 16]
  # Enum.reduce(list, 0, &(&1 + &2)) # 10

  #=================
  # Recursion
  #=================
  def map([], _), do: []

  def map([hd | tl], f) do
    [f.(hd) | map(tl, f)]
  end

  # Sample.Enum.map([1,2,3], &(&1 * 2))
  # [2, 4, 6]

  #=================
  # Tail recursion
  #=================

  # Body recursion: the last operation is the addition operation
  # def length([]), do: 0
  # def length(_ | tail),
  #   do: 1 + length(tail)

  # Tail recursion: only happens when the last operation a function performs i recursion
  # won't overflow the stack
  # NOT WORKING :(
  def other_length([_ | tail]),
    do: other_length(tail | 1)
  def other_length([]| len),
    do: len
  def other_length([_ | tail], len),
    do: other_length(tail | len + 1)
end

# first/1
# {function name} / {number of parameters}

  # def some_function(quantity, {_,_,price}) do
  #   quantity * price
  # end

  # def some_function(quantity, book) do
  #   quantity * elem(book, 2)
  # end

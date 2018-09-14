defmodule Sample.Enum do
  # def first(list) do
  #   hd(list)
  # end

  def first([]) do
    nil
  end

  def first([head | _]) do
    head
  end
end

# first/1
# {function name} / {number of parameters}

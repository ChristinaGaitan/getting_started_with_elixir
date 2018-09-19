defmodule Sample.Enum.Control.Flow do
  # def first, do: nil
  # def first([head | _]), do: head

  # # Same functionality using IF
  # def first(list) do
  #   if (length(list) == 0) do
  #     nil
  #   else
  #     hd(list)
  #   end
  # end

  # # Same functionality using UNLESS
  # def first(list) do
  #   unless (length(list) == 0) do
  #     hd(list)
  #   end
  # end

  # Same functionality short version
  def first(list) do
    if length(list) == 0, do: nil, else: hd(list)
  end
end

# Sample.Enum.Control.Flow.first([1,2,3])
# Sample.Enum.Control.Flow.first([])

# quote do if length(list) == 0, do: nil, else: hd(list) end
# {:if, [context: Elixir, import: Kernel],
#  [
#    {:==, [context: Elixir, import: Kernel],
#     [{:length, [context: Elixir, import: Kernel], [{:list, [], Elixir}]}, 0]},
#    [
#      do: nil,
#      else: {:hd, [context: Elixir, import: Kernel], [{:list, [], Elixir}]}
#    ]
#  ]}

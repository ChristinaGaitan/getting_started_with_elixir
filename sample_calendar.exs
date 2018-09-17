defmodule Sample.Calendar do
  # Guard clauses
  def is_leap_year(year) when rem(year, 400) == 0, do: true
  def is_leap_year(year) when rem(year, 100) == 0, do: false
  def is_leap_year(year) when rem(year, 4) == 0, do: true
  def is_leap_year(year), do: false
end

# We can use operators
# all comparison (==, !=, ===, !==, >, >=, <, <=)
# boolean (and, or, not)
# arithmetic (+,-,*,/)
# arithmetic (+, -)
# binary concatenation operator <>
# the in operator with ranges or lists

# type check functions

# and other aditional functions

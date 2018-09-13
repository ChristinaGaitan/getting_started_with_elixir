defmodule ModulePlayground do
  # import IO
  import IO, only: [puts: 1]
  import Kernel, except: [inspect: 1] # To avoid conflict with our own inspect function (NOT A GOOD IDEA overried Kernel functions)

  # alias ModulePlayground.Misc.Util.Math # Math will be the alias

  alias ModulePlayground.Misc.Util.Math, as: MyMath # MyMath will be the alias

  require  Integer # To use macros

  def say_here do
    inspect "I'm here"
  end

  def inspect(param1) do
    puts "Starting output"
    puts param1
    puts "Ending output"
  end

  def print_sum do
    # ModulePlayground.Misc.Util.Math.add(1,2)
    # Math.add(1,2)
    MyMath.add(1,2)
  end

  def print_is_even(num) do
    puts "is #{num} even? #{Integer.is_even(num)}"
  end
end

# iex "module_playground.exs": to load a module
# r(ModulePlayground): to reload module in terminal (iex)

# Import
# - include module functions
# - Include/exclude specific functions

# Alias
# - Reduce typing
# - Rename a module

# Require
# - Allow using macros

# All of them can be use at Module or at Function level

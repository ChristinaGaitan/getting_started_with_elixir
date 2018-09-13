defmodule ModulePlayground do
  # import IO
  import IO, only: [puts: 1]
  import Kernel, except: [inspect: 1] # To avoid conflict with our own inspect function (NOT A GOOD IDEA overried Kernel functions)

  # alias ModulePlayground.Misc.Util.Math # Math will be the alias

  alias ModulePlayground.Misc.Util.Math, as: MyMath # MyMath will be the alias

  def say_here do
    inspect "I'm here"
  end

  def inspect(param1) do
    puts "Starting output"
    puts param1
    puts "Ending output"
  end

  def print_sum do
    MyMath.add(1,2)
  end
end

# iex "module_playground.exs": to load a module
# r(ModulePlayground): to reload module in terminal (iex)

defmodule ModulePlayground do
  # import IO
  import IO, only: [puts: 1]
  import Kernel, except: [inspect: 1] # To avoid conflict with our own inspect function (NOT A GOOD IDEA overried Kernel functions)

  def say_here do
    inspect "I'm here"
  end

  def inspect(param1) do
    puts "Starting output"
    puts param1
    puts "Ending output"
  end
end

# r(ModulePlayground): to reload module in terminal (iex)

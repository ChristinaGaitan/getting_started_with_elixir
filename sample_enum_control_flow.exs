defmodule Sample.Enum.Control.Flow do
  #===================================
  # If, else
  #===================================

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

  # # Same functionality short version
  # def first(list) do
  #   if length(list) == 0, do: nil, else: hd(list)
  # end

  #===================================
  # COND
  #===================================
  def day_abbreviation(day) do
    if day == :Monday do
      "M"
    else
      if day == :Tuesday do
        "Tu"
      else
        if day == :Wednesday do
          "W"
        else
          if day == :Thursday do
            "Th"
          else
            if day == :Friday do
              "F"
            else
              if day == :Saturday do
                "Sa"
              else
                  "Su"
              end
            end
          end
        end
      end
    end
  end

  def day_abbreviation2(day) do
    cond do
      day == :Monday -> "M"
      day == :Tuesday -> "Tu"
      day == :Wednesday -> "W"
      day == :Thursday -> "Th"
      day == :Friday -> "F"
      day == :Saturday -> "Sa"
      day == :Sunday -> "Su"
      # This will be the default
      true -> "Invalid day"
    end
  end

  # They are in order, if we place the last function here, it will cache eveythin
  # def day_abbreviation3(_), do: "Invalid day"
  def day_abbreviation3(:Monday), do: "M"
  def day_abbreviation3(:Tuesday), do: "Tu"
  def day_abbreviation3(:Wednesday), do: "W"
  def day_abbreviation3(:Thursday), do: "Th"
  def day_abbreviation3(:Friday), do: "F"
  def day_abbreviation3(:Saturday), do: "Sa"
  def day_abbreviation3(:Sunday), do: "Su"
  # We don't care about the value
  def day_abbreviation3(_), do: "Invalid day"


  #===================================
  # Case
  #===================================
  def day_abbrevation4(day) do
    case day do
      :Monday -> "M"
      :Tuesday -> "Tu"
      :Wednesday -> "W"
      :Thursday -> "Th"
      :Friday -> "F"
      :Saturday -> "Sa"
      :Sunday -> "Su"
      _ -> "Invalid day"
    end
  end

  # We can use pattern matching with case statement
  # def describe_date(date) do
  #   case date do
  #     {1, _, _} -> "Brand new month"
  #     {25, 12, _} -> "Merry Christmas"
  #     {25, month, _} -> "Only #{12 - month} months until Christmas"
  #     {31, 10, 1517} -> "The reformation is started"
  #     {31, 10, _} -> "Happy Halloween"
  #     {_, _, _} -> "Just an avarage day"
  #   end
  # end

  # We can also use guard clauses
  def describe_date(date) do
    case date do
      {1, _, _} -> "Brand new month"
      {25, 12, _} -> "Merry Christmas"
      {25, month, _} -> "Only #{12 - month} months until Christmas"
      {31, 10, 1517} -> "The reformation is started"
      {31, 10, _} -> "Happy Halloween"
      {_, month, _} when month <= 12 -> "Just an average day"
      {_, _, _} -> "Invalid month"
    end
  end

  # It's very useful when working with files
  def send_tweet(path) do
    case File.read(path) do
      {:ok, data} -> Tweet.send(data)
      {:error, error} -> IO.puts "Could not open file #{error}"
    end
  end
end



# iex 'sample_enum_control_flow.exs'
# r(Sample.Enum.Control.Flow)

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

# Sample.Enum.Control.Flow.day_abbreviation(:Monday)
# Sample.Enum.Control.Flow.day_abbreviation2(:Monday)
# Sample.Enum.Control.Flow.day_abbreviation(:other) # Su
# Sample.Enum.Control.Flow.day_abbreviation2(:other) # Error

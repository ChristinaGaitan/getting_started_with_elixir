defmodule PluralsightTweet.FileReader do
  def get_string_to_tweet(path) do
    File.read!(path)
    |> String.split("\n")
    |> Enum.map(&String.trim/1) # Delete white spaces at the begining and at the end
    |> Enum.filter(&String.length(&1) <= 140) # Delete white spaces at the begining and at the end
  end
end

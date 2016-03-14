defmodule EnumPractice do

  def lines_length!(file_path) do
    stream_count = File.stream!(file_path)
    |> Enum.count
    IO.puts("File had #{stream_count}")
  end


  def longest_line_length!(file_path) do
    length = File.stream!(file_path)
      |> Stream.map(&String.length/1)
      |> Enum.reduce(0, &max/2)
    IO.puts("Longest line had #{length} characters" )
  end

  def longest_line!(file_path) do
    line = File.stream!(file_path)
      |> Enum.reduce( &longest_line/2)
      IO.puts("longest line: '#{line}'")
  end

  defp longest_line(line1, line2) do
    if(String.length(line1) > String.length(line2) ) do
      line1
    else
      line2
    end
  end

  def words_per_line!(file_path) do
    File.stream!(file_path)
      |> Enum.map(&word_count/1)
      |> Enum.each(&IO.puts/1)
  end

  defp word_count(string) do
    String.split(string, " ")
        |> length
  end
end

EnumPractice.lines_length!("/Users/zwhitten/Documents/natural_nums.ex")
EnumPractice.longest_line_length!("/Users/zwhitten/Documents/natural_nums.ex")
EnumPractice.longest_line!("/Users/zwhitten/Documents/natural_nums.ex")
EnumPractice.words_per_line!("/Users/zwhitten/Documents/natural_nums.ex")

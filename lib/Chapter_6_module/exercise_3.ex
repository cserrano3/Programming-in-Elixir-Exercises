defmodule CH_6_Exercise_3 do
  def getMiddle(min, max), do: div(min + max, 2)

  def guessNumber(number, min..max) when div(min + max, 2) > number do
    IO.puts "The guess is smaller than the half #{div(min + max, 2)}"
    guessNumber(number, min..getMiddle(min, max));
  end
  def guessNumber(number, min..max) when div(min + max, 2) < number do
    IO.puts "The guess is bigger than the half  #{div(min + max, 2)}"
    guessNumber(number, getMiddle(min, max)..max);
  end
  def guessNumber(number, min..max), do: IO.puts getMiddle(min, max)
end

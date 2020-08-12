#  A way to work with recursive calls with lists in elixir
# is by using the pattern matching.
# Lists in Elixir work like linked lists, therefore a
# pattern matching like this:
# [head | tail] = list
# [head | tail] = tail
# will always return the first element of the remaining elements in the tail.
# This trick can be used to recurse over each element in a list.

defmodule CoolRecursion do
  def custom_each([head | tail]) do
    IO.puts(head)

    if(tail != []) do
      custom_each(tail)
    end
  end

  def custom_each_guard([head | tail]) do
    IO.puts(head)
    custom_each_guard(tail)
  end

  def custom_each_guard(tail) when tail == [], do: nil
end

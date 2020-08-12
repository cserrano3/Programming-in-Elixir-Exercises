defmodule C4_Exercise_2 do

  def main do
    fizz_buzz = fn
      (0, 0, _) ->  "FizzBuzz"
      (0, _, _) -> "Fizz"
      (_, 0, _) -> "Buzz"
      (_, _, d) -> d
    end

      fizz_buzz.(0,0,3)
      |> fizz_buzz.(0,2)
      |> fizz_buzz.(0,3)
  end

  def fizz_buzz_rem(n) do
    fizz_buzz = fn
      (0, 0, _) ->  "FizzBuzz"
      (0, _, _) -> "Fizz"
      (_, 0, _) -> "Buzz"
      (_, _, d) -> d
    end

    fiz_buzz_rem = fn(n) -> fizz_buzz.(rem(n, 3), rem(n, 5), n) end

    fiz_buzz_rem.(n)
  end

end

defmodule MapList do
  def map([], _func) do
    []
  end
  def map([ head | tail ], func) do
     [ func.(head) | map(tail, func) ]
  end
  def mapSum([], _func) do
    0
  end
  def mapSum([head | tail], func) do
    [func.(head) | mapSum(tail, func)]
  end

  def mapSum2([], _func) do
    0
  end

  def mapSum2([head | tail], func) do
    func.(head) + mapSum2(tail, func)
  end

  def caesar([head | tail], n) do
    ''
  end
  def caesar([head | tail], n) do
    (head + n) + caesar(tail, n)
  end

end

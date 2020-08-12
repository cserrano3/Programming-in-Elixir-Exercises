defmodule Exercise_2 do

  def first do
    [a, b, a] = [1,2,3] ##error
  end

  def second do
    [a, b, a] = [1, 1, 2] ##error
  end

  def third do
    [a, b, a] = [1, 2, 1] ## [1,2,1]
  end
end

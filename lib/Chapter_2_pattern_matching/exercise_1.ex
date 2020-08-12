defmodule Exercise1 do
  def main do
    a = [1, 2, 3]
    a
  end

  def first do
    a = [1, 2, 3]
    a
  end

  def second do
    a = 4
    a
  end

  def third do
    a = 4
    4 = a
  end

  def fourth do
    [a, b] = [1,2,3] ## error
  end

  def fifth do
    a = [[1,2,3]]
    a
  end

  def sixth do
    [a] = [[1 ,2 ,3]]
    [a]
  end

  def seventh do
    [[[a]]] = [[1,2,3]] ##error

    IO.puts a
    IO.puts [a]
  end
end

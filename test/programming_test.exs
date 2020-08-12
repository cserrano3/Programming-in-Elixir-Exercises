defmodule ProgrammingTest do
  use ExUnit.Case
  doctest Programming

  test "greets the world" do
    assert Programming.hello() == :world
  end
end

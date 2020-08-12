defmodule Chapter8Recursion do
  def hello_world(count \\ 0) do
    IO.puts("Hello, World")

    if(count <= 10) do
      new_count = count + 1
      hello_world(new_count)
    end
  end

  def hello_world_with_guard_clause(count) when count >= 10, do: count

  def hello_world_with_guard_clause(count) do
    new_count = count + 1
    IO.puts("Hello, world #{new_count}")
    hello_world_with_guard_clause(new_count)
  end
end

defmodule Chapter8 do
  def pattern_matching do
    person = %{name: "Dave", age: 28}

    # Is there a value in the 'name' key?
    %{name: person_name} = person
    IO.puts('Name:mix #{person_name}')

    # Are there entries for the following keys?
    %{name: _, age: _} = person

    # Does the entry with the 'name' key has the value "Dave"?
    %{name: "Dave"} = person
  end

  def filter_map do
    people = [
      %{name: "Grumpy", height: 1.24},
      %{name: "Dave", height: 1.88},
      %{name: "Dopey", height: 1.32},
      %{name: "Shaquille", height: 2.16},
      %{name: "Sneezy", height: 1.28}
    ]

    valid_heights =
      for person = %{height: height} <- people,
          height < 1.5,
          do: person

    valid_names =
      for person = %{name: person_name} <- people,
          String.starts_with?(person_name, ["S"]),
          do: person

    assembled = [valid_heights, valid_names]

    [valid_heights_again | _] = assembled

    [%{name: first_item_name} | _] = valid_heights_again

    first_item_name
  end

  def update_map do
    grumpy = %{name: "Grumpy", height: 1.24}

    new_grumpy = %{grumpy | height: 1.35}

    new_grumpy
  end
end

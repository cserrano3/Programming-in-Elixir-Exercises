defmodule C_5_Exercise_5 do

  def main do

    get_prefix = fn ( prefix ) ->
      fn ( name ) ->
          "#{prefix}, #{name}"
      end
    end

    get_prefix.("Hello").("Michael!")

  end

end

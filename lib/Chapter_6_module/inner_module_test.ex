defmodule Outer do
	defmodule Inner do
		def inner_func do
			IO.puts "I am fron the inner module"
		end
	end
	def outer_func do
		Inner.inner_func
		IO.puts "I am from the outer module"
	end
end

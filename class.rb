class Marker
	def set_color(my_color)
		@color = my_color
	end
	def write
		Kernel.puts("I am writing with a #{@color} marker!")
	end
end
class Pet
	def speak(noise)
		@noise = noise
		Kernel.puts("#{@noise}")
	end
	def pet_age(years)
		@years = years
		puts "Your pet is #{@years} years old.}"
	end
	def feed(food)
		@food = food
		puts "You fed your pet #{@food}."
	end
end
class House
	def price(dollar)
		@dollar = dollar
		puts "Your house costs #{dollar} dollars!"
	end
	def paint(color)
		@color = color
		puts "Your house is now #{color}. Very classy!"
	end
end

5.send(:*, 5)
"omg".send(:upcase)
['a', 'b', 'c'].send(:at, 1)
['a', 'b', 'c'].send(:insert, 2, 'o', 'h', 'n', 'o')
{}.send(:size)
{character: "Mario"}.send(:has_key?, :character)

6 - 32
{html: true, json: false}.keys
"MakerSquare" * 6
"MakerSquare".split('a')
['alpha', 'beta'].[](3)
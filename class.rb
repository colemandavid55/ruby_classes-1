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

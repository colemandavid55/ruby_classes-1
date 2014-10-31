class Car
	def initialize
		@fuel = 10
		@distance = 0
		puts "the initialize method is running automatically"
	end
	def get_info
		"I'm a car. I've driven #{@distance} miles and have #{@fuel} gallons of gas left."
	end
	def drive(miles)
		if (@fuel -= miles / 20.0) >= 0
			@distance += miles
			@fuel -= miles / 20.0
		else 
			@distance += @fuel * 20.0
			@fuel = 0
			puts "You have run out of gas!"
		end
	end
	def fuel_up
		gallons_needed = 10.0 - @fuel
		puts "That's going to cost you $#{3.5 * gallons_needed}"
		@fuel = 10.0
	end
end
class RaceCar
	attr_accessor :name
	attr_accessor :speed
	attr_accessor :distance

	def initialize(name)
		@name = name
		@speed = 0
		@distance = 0
		puts "#{@name} has just rolled off the assembly line!"
	end
end

class RaceTrack
	attr_accessor :track_name
	attr_accessor :time
	attr_accessor :racers

	def initialize(track_name)
		@track_name = track_name
		@time = 0
		@racers = []
		puts "#{@track_name} was just completed and is ready for action!"
	end

	def add_car(car)
		@racers << car
		puts "#{car.name} has entered the race!"
	end

	def start_race
		@racers.each {|x| x.speed = 60 + rand(20)
			puts "#{x.name}'s speed to start the race is #{x.speed}."
		}
		@racers.freeze
	end

	def advance_hour
		@time += 1
		@racers.each {|x| x.distance += x.speed
			puts "#{x.name}'s car's distance from start is #{x.distance} miles."
		}
		@racers.each {|x| x.speed += rand(20)
			puts "#{x.name}'s speed is now #{x.speed}."
		} if @time < 5
		if @time == 5
			puts "The race is over!"
			finish_line = []
			@racers.each {|x| finish_line << x.distance}
			@racers.each {|x| if x.distance == finish_line.sort.last
				puts "And the winner is #{x.name}!"
			end}			
			@racers.each {|x| x.speed = 0
				x.distance = 0}
			@time = 0
		end
	end
end

car_a = RaceCar.new("Car A")
car_b = RaceCar.new("Car B")
circuit = RaceTrack.new("Motorola Speedway")

circuit.add_car(car_a)
circuit.add_car(car_b)
circuit.start_race

5.times do 
	circuit.advance_hour
end

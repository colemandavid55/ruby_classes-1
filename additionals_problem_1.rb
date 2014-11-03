sum = 0
(1...1000).each do |x|
	if x % 3 == 0 || x % 5 == 0
		sum += x
	end
end
puts sum

numbers = []
1.upto(100) {|i| numbers << i}

sum_of_squares = numbers.reduce {|sum, n| sum += n * n}
square_of_sums = numbers.reduce(:+) * numbers.reduce(:+)

puts "Answer: #{square_of_sums - sum_of_squares}"
puts "Enter a number: \n"
number = gets.strip.to_i
fibonacci = []

if number == 0
	puts "Fibonnaci at #{number}: 0"
elsif number <= 2
	puts "Fibonnaci at #{number}: 1"
else
	last = 1
	s_last = 1
	i = 3
	while i <= number
		current = last + s_last
		s_last = last 
		last = current 
		i = i + 1
	end
	p "Fibonnaci at #{number}: #{current}"
end


numbers = []
i = 1; 
while i <= 100
	numbers << i;
	i = i + 1
end

numbers.each do |number| 
	if(number%3 == 0 && number%5 == 0)
		puts "fizzbuzz"
	
	elsif(number%3 == 0)
		puts "fizz"
	
	elsif(number%5 == 0)
		puts "buzz"

	else
		puts number
	end
end


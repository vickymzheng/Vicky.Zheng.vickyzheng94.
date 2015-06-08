##Strict Bouncer 

puts "Welcome to da hip hoppin club. What's your age?"
age = gets.strip.to_i

if age >= 65 
	puts "Go back to the nursing home!"
elsif age < 21 
	puts "Too young fool!"
else 
	puts "Aw yeah c'mon in"
end

		
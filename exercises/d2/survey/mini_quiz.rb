## Mini Quiz about Vicky Zheng

puts "Welcome to Vicky's mini quiz"
point_counter = 0

puts "What's my last name?"
last_name = gets.strip

if (last_name == "Zheng") || (last_name == "zheng")
	point_counter = point_counter + 1
	puts "Right! You have #{point_counter} point"
else
	puts "Wrong... my last name is Zheng"
end

puts "How many siblings do I have?"
siblings = gets.strip
if (siblings == "2") || (siblings == "two")
	point_counter = point_counter + 1
	suffix = (point_counter == 1)? "" : "s"
	puts "Right! You have #{point_counter} point#{suffix}"
else
	puts "Wrong... I have 2 siblings"
end

puts "What country was I born in?"
country = gets.strip
if (country == "America") || (country == "USA") || (country == "US") || (country == "us")
	point_counter = point_counter + 1
	suffix = (point_counter == 1)? "" : "s"
	puts "Right! You have #{point_counter} point#{suffix}"
else
	puts "Wrong... I was born in the US"
end

suffix = (point_counter == 1)? "" : "s"
puts "Thanks for playing :) You finished with #{point_counter} point#{suffix}!"
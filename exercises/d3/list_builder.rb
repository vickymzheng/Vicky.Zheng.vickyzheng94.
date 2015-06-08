list = []
puts "Welcome to list builder!"

while true 
	puts "What can I add?"
	item = gets.strip
	list << item
	puts "Added! Your list is:\n#{list}"
end
list = []
puts "Welcome to list builder!"

while true 
	puts "What can I do for you?"
	item = gets.strip
	if item == "quit"
		break
	end
	
	split_up = item.split
	if split_up[0] == "add"
		list << split_up[1]
		puts "Added! Your list is:\n#{list}"
	elsif split_up[0] == "remove"
		list.delete(split_up[1])
		puts "Removed! Your list is:\n#{list}"
	end
end

puts "Bye!"
list = {}
puts "Welcome to list builder!"

while true 
	puts "What can I do for you?"
	item = gets.strip
	if item == "quit"
		break
	end
	
	split_up = item.split
	if split_up[0] == "add"
		if list.has_key?(split_up[1])
			list[split_up[1]] = list[split_up[1]] + 1
		else
			list[split_up[1]] = 1
		end
		puts "Added! Your list is:\n#{list}"
	elsif split_up[0] == "remove"
		if list.has_key?(split_up[1])
			if list[split_up[1]] == 1
				list.delete(split_up[1])
			else
				list[split_up[1]] = list[split_up[1]] - 1
			end
			puts "Removed! Your list is:\n#{list}"
		end
	end
end

puts "Bye!"
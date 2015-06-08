# greet the user
puts "Hello! Welcome to Petitions!"

#get the petitions
peitions = ["Gun Control", "Cannabis", "Immigration"]

#print each petition 
peitions.each_with_index do |petition|
	puts "#{index}. #{petition}"
end

#goodbye
puts "Thanks, bye!"
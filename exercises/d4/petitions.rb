require 'rest-client'
require 'json'

# greet the user
puts "Hello! Welcome to Petitions!"
puts "What kind of petitions would you like to see? ('open' or 'closed')"

status = gets.strip
offset = 0
puts "Showing petitions of status: #{status}..."

#get the petitions
#peitions = ["Gun Control", "Cannabis", "Immigration"]

while true
	#print each petition 
	response = RestClient.get "https://api.whitehouse.gov/v1/petitions.json?status=#{status}&offset=#{(offset)}"

	parsed_response = JSON.parse(response)

	petitions = parsed_response["results"]

	if petitions.empty? 
		puts "No more petitions to show."
		break
	end

	petitions.each_with_index do |petition, index|
		puts "#{index+1+offset}. [#{petition["status"].upcase}] #{petition["title"]}"
	end
	offset += 10
	puts "Would you like to see more? (y/n)"

	break if(gets.strip == "n") 

end


#goodbye
puts "Thanks, bye!"
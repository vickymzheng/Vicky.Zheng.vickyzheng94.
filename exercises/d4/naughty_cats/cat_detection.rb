require 'json'
require 'rest-client'
require 'crack'

puts "Welcome to cat nudity detection!"

puts "How many cat images would you like to test?"
img_numbers = gets.strip.to_i 

while true 
	result = RestClient.get "http://thecatapi.com/api/images/get?format=xml&results_per_page=#{img_numbers}"
	myXML = Crack::XML.parse(result)
	my_json = myXML.to_json
	parsed_data = JSON.parse(my_json)
	cat_img = parsed_data["response"]["data"]["images"]["image"]

	cat_img.each do |cat|
		cat_url = cat["url"] 
		detection_request = RestClient.get "https://sphirelabs-advanced-porn-nudity-and-adult-content-detection.p.mashape.com/v1/get/index.php?mashape-key=NpDwEyBlK4mshUGWIbwxS7XMyOy6p1y12dNjsnENBNhSt4e4Kc&url=#{cat_url}"
		detection = JSON.parse(detection_request)
		isPorn = detection["Is Porn"]
		if isPorn == "False"
			puts "Naughty: #{cat_url}"
		else 
			puts "Safe for work: #{cat_url}"
		end
	end




	puts "Would you like more images? (y/n)"
	break if(gets.strip == "n") 

	puts "How many more?"
	img_numbers = gets.strip.to_i
end

puts "Bye!"

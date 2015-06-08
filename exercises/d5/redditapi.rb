require 'rest-client'
require 'json'

puts "Welcome to the funny subreddit" 


	#do this
	response = RestClient.get "http://www.reddit.com/r/funny.json"
	parsed_response = JSON.parse(response)
	data_parsed = parsed_response["data"]["children"][0]["data"]["title"]
#	child_data = data_parsed["children"]
#	first_child = child_data[0]
#	data_first = first_child["data"]
#	first_child_data_title = data_first["title"]
#	puts first_child_data_title;

	puts data_parsed




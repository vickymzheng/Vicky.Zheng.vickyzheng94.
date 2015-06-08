require 'rest-client'
require 'json'

puts "Welcome to Reddit!"
puts "What stories would you like to see? ('top'/'hot')"
feed = gets.strip
puts "Which subreddit would you like to see? ('funny' , 'aww')?"
subreddit_input = gets.strip
if subreddit_input != nil 
	subreddit = "/r/#{subreddit_input}"
end

puts "Loading stories..."

response = RestClient.get "http://www.reddit.com#{subreddit}/#{feed}.json?limit=10"
parsed_response = JSON.parse(response)
stories = parsed_response["data"]["children"]
stories.each_with_index do |story, index|
	puts "#{index}. #{story["data"]["title"]}"
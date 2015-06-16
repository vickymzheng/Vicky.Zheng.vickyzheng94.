#Model 
require 'time'
class Petition < ActiveRecord::Base
	def self.get_petitions
		response = RestClient.get "https://api.whitehouse.gov/v1/petitions.json"
		parsed_response = JSON.parse(response)
		petitions = parsed_response["results"] #array

		petitions.map! do |petition|
			{title: petition["title"],
			body: petition["body"], 
			status: petition["status"], 
			created: Time.at(petition["created"]),
			deadline: Time.at(petition["deadline"]),
			signatures: petition["signatureCount"]}
		end

	end
end
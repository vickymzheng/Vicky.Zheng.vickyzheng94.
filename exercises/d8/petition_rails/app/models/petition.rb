#Model 
class Petition < ActiveRecord::Base
	def self.get_petitions
		response = RestClient.get "https://api.whitehouse.gov/v1/petitions.json"
		parsed_response = JSON.parse(response)
		petitions = parsed_response["results"] #array

		petitions.map! do |petition|
			{title: petition["title"],
			body: petition["body"], 
			status: petition["status"], 
			created: petition["created"],
			deadline: petition["deadline"],
			signatures: petition["signatureCount"]}
		end

	end
end
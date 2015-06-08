def index_of(str, let)
	length = str.length
	str.split("")
	i = 0
	while i < length
		if str[i] == let
			p i
			break
		else i+=1
		end
	end
	p -1
end

def find_by_name(hash_array, name)
	length = hash_array.length
	i = 0
	while i < length
		if hash_array[i][:name] == name
			p hash_array[i]
			break
		else
			i+=
		end
	end
	p -1
end

def filter_by_name(hash_array, name)
	answer = []
	length = hash_array.length
	i = 0
	while i < length
		if hash_array[i][:name] == name
			answer << hash_array[i]
		else
			i+=
		end
	end	
	answer << -1 if answer.empty
	p answer
end

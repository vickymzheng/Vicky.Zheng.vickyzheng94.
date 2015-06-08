originial = ["apples", "bananas", "carrots", 4]
reverse = []; 
orig_length = originial.length
i = 0
loop do 
	thing = originial.last
	reverse << thing
	originial.delete(thing)
	i = i + 1
	break if i == orig_length
end
reverse.each do |thing|
	puts thing
end

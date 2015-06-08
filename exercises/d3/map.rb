# map.rb

result = ["Google", "Bing", "Ask Jeeves"].map do |e|
  if e == "Google"
    e = "OK"
  elsif e == "Bing"
    e = "Bad!"
  else
    e = "What is that?"
  end
end

puts result
# => ["OK", "Bad!", "What is that?"]
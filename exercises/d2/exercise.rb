## Family Average

puts "Hello"
puts "How old are you?"
your_age = Integer(gets.strip) 

puts "How old is your mom?"
mom_age = Integer(gets.strip)

puts "How old is your dad?"
dad_age = Integer(gets.strip)

family_average = (your_age + mom_age + dad_age)/3
puts "Thanks for answering my creepy questions! The average age of your family is #{family_average}"
puts "Goodbye!"
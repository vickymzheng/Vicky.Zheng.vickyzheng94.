## Quadractic Equation Calculator 

puts "Hey bru. Let's compute some quadform."

puts "Give me an A: "
a = Integer(gets.strip)

puts "Give me a B: "
b = Integer(gets.strip)

puts "Give me a C: "
c = Integer(gets.strip)

puts "beep computing boop boop"
puts "x is either \n"

puts "#{(-b + Math.sqrt(b*b - 4*a*c))/(2*a)} \n" 

puts "or\n"

puts "#{(-b - Math.sqrt(b*b - 4*a*c))/(2*a)} \n" 

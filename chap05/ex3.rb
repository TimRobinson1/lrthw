name = 'Tim G. Robinson'
age = 35 # not a lie in 2009
height = 74 # inches
height_metric = height * 2.54
height_meters = height_metric / 100.0
weight = 180 # lbs
weight_metric = weight / 2.2
eyes = 'Blue'
teeth = 'White'
hair = 'Brown'

puts "let's talk about #{name}."
puts "He's #{height} inches or #{height_meters} meters (#{height_metric} centimeters) tall."
puts "He's #{weight} pounds heavy, also known as #{weight_metric}"
puts "Actually that's not too heavy."
puts "He's got #{eyes} eyes and #{hair} hair."
puts "His teeth are usually #{teeth} depending on the coffee."


puts "If I add #{age}, #{height}, and #{weight} I get #{age + height + weight}."

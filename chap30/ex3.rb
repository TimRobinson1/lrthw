# Changing numbers and adding slightly more complex boolean variables.

people = 40
cars = 30
trucks = 25

# An if statement which runs the line(s) of code if the chosen statment is true.
if cars > people
  puts "We should take the cars."
# Elsif runs if the initial if statement comes out as false, and the elsif is true.
elsif cars < people || cars < trucks
  puts "We should not take the cars."
# Else runs when the other options in the if statment come out as false.
else
  puts "We can't decide."
end

if trucks > cars && people > trucks
  puts "That's too many trucks."
elsif trucks < cars
  puts "Maybe we could take the trucks."
else
  puts "We still can't decide."
end

if people > trucks
  puts "Alright, let's just take the trucks."
else
  puts "Fine, let's stay home then."
end

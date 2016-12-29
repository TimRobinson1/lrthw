# N.B. Not a functional piece of Ruby code.  The called functions have been rearranged as suggested in Study Drill 1 to help understand what's going on.

ten_things = "Apples Oranges Crows Telephone Light Sugar"

puts "Wait there are not 10 things in that list.  Let's fix that."

stuff = split(ten_things, ' ')
more_stuff = ["Day", "Night", "Song", "Frisbee", "Corn", "Banana", "Girl", "Boy"]

# Using math to make sure there's 10 items

while stuff.length != 10
  next_one = pop(more_stuff)
  puts "Adding: #{next_one}"
  push(stuff, next_one)
  puts "There are #{stuff.length} items now."
end

puts "There we go: #{stuff}"

puts "Let's do some things with stuff."

puts stuff[1]
puts stuff[-1]
puts pop(stuff)
puts join(stuff, ' ')
puts stuff[3..5].join("#")

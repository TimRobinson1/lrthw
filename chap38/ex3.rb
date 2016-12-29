# A new function created as part of the Study Drills , Chapter 38.

managers = "John Terry Phil Lewis Bill Zoe"

puts "Wait there are not 10 managers in that list.  Let's fix that."

staff = managers.split(' ')
employees = ["David", "Steve", "Mandeep", "Isabella", "Hiro", "Chey", "Jasmine", "Bradley"]

while staff.length != 10
  next_one = employees.pop
  puts "Adding: #{next_one}"
  staff.push(next_one)
  puts "There are #{staff.length} items now."
end

puts "There we go: #{staff}"

puts "Let's do some things with the staff."

puts staff[1]
puts staff[-1]
puts staff.pop()
puts staff.join(' ')
puts staff[3..5].join("#")

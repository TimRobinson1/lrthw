# Converted into a function.

def theCount(start)
  i = 0
  numbers = []

  while i < start
    puts "At the top i is #{i}"
    numbers.push(i)

    i += 1
    puts "Numbers now: ", numbers
    puts "At the bottom i is #{i}"
  end

  puts "The numbers: "

end

theCount(3)

def gold_room
  puts "This room is full of gold.  How much do you take?"

  print "> "
  choice = $stdin.gets.chomp

  # This line has a bug, so fix it
  if (choice != '0') && (choice.to_i.to_s != choice.strip)
    puts "Man, learn to type a number."
  else
    puts "It's a number!"
  end
end

gold_room

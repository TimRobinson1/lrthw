$has_weapon = false

def dead(why)
  puts why, "Game over!"
  exit(0)
end

def stranger_room
  puts "You are in a small room."
  puts "In front of you is a shadowy man in a long trenchcoat."
  puts "He holds his hand out and asks you for money.  What do you do?"

  while true
    print "> "
    choice = $stdin.gets.chomp

      if (choice.include? "give") && (!((choice.include? "don't") || (choice.include? "do not")) && !(choice.include? "no"))
        puts "Yes!"
        $has_weapon = true
        start
      else
        puts "No!"
      end
  end
end

def start
  puts "You are in a dark room."
  puts "There is a door to your right and left."
  if $has_weapon == false
    puts "You also have no weapons."
  else
    puts "You also have the Heavenly Sword."
  end
  puts "Which door do you take?"

  while true
    print "> "
    choice = $stdin.gets.chomp

      if choice == "left"
        button_room
      elsif choice == "right"
        stranger_room
      else
        puts "You stumble around the room aimlessly."
      end
  end
end

start

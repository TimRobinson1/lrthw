$has_weapon = false
$money = 15
$bomb = ["This is your last chance", "You have two attempts remaining"]

def dead(why)
  puts why, "Game over!"
  exit(0)
end

def stranger_room
  puts "You are in a small room."
  puts "In front of you is a shadowy man in a long trenchcoat."
  puts "He holds his hand out and asks you for five gold coins.  What do you do?"

  while true
    print "> "
    choice = ($stdin.gets.chomp).downcase

    if (choice.include? "give") && (!((choice.include? "don't") || (choice.include? "do not")) && !(choice.include? "no"))
      puts "The man takes only 5 coins and scrambles away to a door across the room."
      puts "He whispers 'Octo, Novem, Tribus' in your direction before disappearing through the door."
      $money -= 5
      puts "The path to the next room is now open and you follow the man through."
      bomb_room
    elsif (((choice.include? "stab") || (choice.include? "fight")) || ((choice.include? "punch") || (choice.include? "hit"))) || ((choice.include? "attack") || (choice.include? "kill"))
      puts dead("You try to attack, but the shadowy man grabs you by the shoulder and stabs you. You bleed out.")
    else
      puts "The stranger stares at you."
    end
  end
end

def bomb_room
  puts "You enter into a very large, brightly lit room, filled with people."
  puts "Everyone is screaming and panicking. You soon spot the source of the panic."
  puts "A very large beeping bomb is ticking down in the center of the room."
  puts "It will kill everybody. The disarm code is three digits long."
  puts "You have no choice but to guess. You have three attempts."
  x = 2

  while true
  print "> "
  choice = $stdin.gets.chomp
    if x == 0
      if choice == "893"
        puts "You got it right!  The bomb is defused and everyone cheers loudly."
      else
        puts dead("The bomb beeps loudly and the timer flashes zero. It explodes, killing everyone.")
      end
    else
        if choice == "893"
          puts "You got it right!  The bomb is defused and everyone cheers loudly."
        else
          x -= 1
          puts "The bomb beeps loudly. Incorrect. #{$bomb[x]}"
        end
    end
  end
end

def start
  puts "You are in a dark room."
  puts "There is a door to your right and left."
  puts "You have #{$money} gold coins."
  if $has_weapon == false
    puts "You also have no weapons."
  else
    puts "You also have the Heavenly Sword."
  end
  puts "Which door do you take?"

  while true
    print "> "
    choice = ($stdin.gets.chomp).downcase

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

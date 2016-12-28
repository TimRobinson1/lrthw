puts "You enter a dark room with two doors.  Do you go through door #1 or door #2?"

print "> "
door = $stdin.gets.chomp

if door == "1"
  puts "There's a giant bear here eating a cheese cake.  What do you do?"
  puts "1.  Take the cake."
  puts "2.  Scream at the bear."

  print "> "
  bear = $stdin.gets.chomp

  if bear == "1"
    puts "The bear eats your face off.  Good job!"
  elsif bear == "2"
    puts "The bear eats your legs off.  Good job!"
  else
    puts "Well, doing %s is probably better.  Bear runs away."
  end

elsif door == "2"
  puts "You stare into the endless abyss at Cthulhu's retina."
  puts "1. Blueberries."
  puts "2. Yellow jacket clothespins."
  puts "3. Onions are the true overlords."
  puts "4. Aren't the flowers lovely this time of year?"

  print "> "
  insanity = $stdin.gets.chomp

  if insanity == "1" || insanity == "2"
    puts "Your body survives powered by a mind of jello.  Good job!"
  elsif insanity == "3"
    puts "You manage to hold on to your sanity just long enough to stumble into another room with nothing but a blue armchair."
    puts "What do you do?"
    puts "1. Sit in the chair"
    puts "2. Search the room for a way out."

    print "> "
    chair = $stdin.gets.chomp

      if chair == "1"
        puts "You sit down in the chair and feel an overwhelming sense of peace.  Five hours pass."
        puts "Part of you wants to get up, but a powerful feeling of peace is making you want to stay.  What do you do?"
        puts "1. Force yourself to get up."
        puts "2. Stay sitting... it's just so comfy..."

        print "> "
        sitting = $stdin.gets.chomp
          if sitting == "1"
            puts "You stand up and feel reinvigorated.  Bursting with confidence and feeling rested, you leave to live the rest of your life."
          elsif sitting == "2"
            puts "You just can't leave... It's the best thing you've ever sat on!  Time passes."
            puts "Three hundred and eighty-five years later your corpse is discovered by Doctor Jamesin Squaalk, the first human-alien hybrid being."
            puts "Congratulations, you became an important archeological find!"
          else
            puts "Unable to resolve your internal struggle of whether to stay or leave, your heart fails."
          end
      elsif chair == "2"
        puts "You ignore the chair and focus on finding a door.  After an hour, you find a small button hidden under the skirting board."
        puts "What do you do?"
        puts "1. Push the button."
        puts "2. Don't push the button."

        print "> "
        button = $stdin.gets.chomp
          if button == "1"
            puts "You push the button.  Seemingly, nothing happens.  Annoyed, you push it again several times."
            puts "Half an hour later, the ceiling in the room opens and you are buried by enormous Amazon Delivery boxes."
            puts "Turns out that was an automatic order button.  Congratulations!  Corporate consumerism just killed you."
          elsif button = "2"
            puts "You ignore the suspicious button and continue searching for a way out."
            puts "After thirty minutes, a hatch in the wall opens.  You climb through to safety."
          else
            puts "The mystery of the button consumes you until you pass out.  When you come to, you're in bed."
            puts "Congratulations, you just stumbled your way out of danger."
          end
      else
        puts "Indecisive, you can't decide what to do.  Time continues to pass."
      end

  else
    puts "The insanity rots your eyes into a pool of muck.  Good job!"
  end

else
  puts "You stumble around and fall on a knife and die.  Good job!"
end

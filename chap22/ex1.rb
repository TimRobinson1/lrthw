# This is a Ruby Reference file listing and describing all symbols and functions used up until this point in the book, Learn Ruby the Hard Way, Exercise 22.

puts %q{
puts
  Puts quoted string and prints to screen.  For example, 'puts "Hello world!" makes the computer return "Hello world!"'

irb
  This stands for Interactive Ruby Shell.  This is used in the command line to type ruby directly into the terminal.

#
  The pound sign is used to comment out sections of code, like the // comment command in Javascript.

#{}
  This tells Ruby to complete whatever is inside the brackets before displaying/running the rest of the code. For example, if numbers = 1 + 3, then "My number is #{numbers}" will display as "My number is 4"

\
  This is an escape sign.  It allows whatever comes after it to avoid being recocgnised by Ruby.  For example, \" is useful if you want a double quote mark inside a double quote string.  There are other more specific uses such as \n which puts the content that follows afterwards on a seperate line.


def
  This is the start of a function in Ruby and is followed by the name of your function.  For example, 'def my-function(parameter1, parameter2)'

end
  This is the end of a function and is needed to complete it. It is also the end of sections such as if statements.

+
  Plus: Used for addition of integers.  For example, '4 + 3' tells ruby to add the integers and return 7.  Can also be used to combine strings.

-
  Minus: Used for the subtraction of integers.

/
  Forward Slash: Used for division of integers.

*
  Asterisk:  Used for multiplication of integers.

%
  % is the modulo operator. The result of counter % 2 is the remainder of counter / 2. n % 2 is often a good way of determining if a number n is even or odd. If n % 2 == 0, the number is even (because no remainder means that the number is evenly divisible by 2); if n % 2 == 1, the number is odd.

<
  Less than: Used in mathematical formulas.

>
  Greater than: Used in mathematical formulas.

<=
  Less than or equal to: Used in mathematical formulas.

>=
  Greater than or equal to: Used in mathematical formulas.

=
  Equal sign: States that one is equal to the other.

+=
  This is shorthand for adding what's on the left side of the equals to the right.  For example, "current_number += 5" is the same as "current_number = current_number + 5"

-=
  Shorthand for subtracting what's on the left of the equals from what's on the right.  See above.

%q{}
  The same as a triple single-quoted string. Allows for multi-lined code that reads directly, rather than reading is as code.

""
  Double quotes for a string.

"""
  Triple single-quotes for quoting strings that contain "" within them without confusing the computer.

''
  Single quote marks for a string.

'''
  Triple quote marks for a string.  Used like """ except that it does not read code inside it.

print
  Identical to the puts command, except that it does not add a new line to the end of the output.

return
  Returns a value.  Right now in my study it is unnecesary as Ruby automatically returns the last calculated value.

gets
  This takes user input and uses it as a value in your code, along with the linebreak at the end.

gets.chomp
  This is identical to gets, except that .chomp at the end cuts off the linebreak.

$stdin.gets.chomp
  This is used like gets.chomp, but in conjunction with ARGV.

.to_i
  Adding this on to the end of the value converts it to an integer. For example, number = "9" then made into number.to_i becomes 9.

.to_f
  Same as above, but converts to a floating number, a decimal.

ARGV
  Used at the start of the code, it defines the use for the values inputted by the user running the file.  For example, my_number = ARGV means that when someone runs the file by typing 'ruby test.rb 57', the file will run with the value of my_number as equal to 57.

open(filename_example.txt)
  Creates a 'file object' and presents a version of the file.

close
  Closes the file

read
  Reads the contents of the file. You can assign the result to a variable.

readline
  Reads just one line of a text file.

truncate
  Empties the file. Watch out if you care about the file.

write('example')
  Writes "example" to the file.

w, r, a
  A string with a character in it for the kind of mode for the file.
  If you use 'w' then you're saying "open this file in 'write' mode," thus the 'w' character.
  There's also 'r' for "read," 'a' for append.

}

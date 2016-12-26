# Takes the command line input and makes it the filename variable
filename = ARGV.first

# Sets the txt variable to the command of opening the variable 'filename'
txt = open(filename)

# Prints out the file contents with a header and file title.
puts "Here's your file #{filename}: "
print txt.read

# You can type in the filename to print the file out to the console again.
print "Type the filename again: "
file_again = $stdin.gets.chomp

# Repeating line 5 but with differently named variables.
txt_again = open(file_again)

# Repeating line 9.
print txt_again.read

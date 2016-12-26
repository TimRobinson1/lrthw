print "Please enter the filename: "
filename = gets.chomp
txt = open(filename)

# Prints out the file contents with a header and file title.
puts "Here's your file #{filename}:"
print txt.read

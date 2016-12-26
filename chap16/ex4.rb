filename = ARGV.first

txt = open(filename)

puts "The file being opened is #{filename}"
print txt.read

print "How many cans of beans do you have? "
cans = gets.chomp.to_i
print "How many have you eaten? "
eaten = gets.chomp
print "How many of those can I have? "
give = gets.chomp.to_i

result = cans - give

puts "So, right now you've got #{cans} cans, because you've already eaten #{eaten}. But you said that I can have #{give} of your cans, right?  This would leave you with #{result} cans."

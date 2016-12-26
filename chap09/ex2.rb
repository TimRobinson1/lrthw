# Here's some new strange stuff, remember to type it exactly.

days = "Mon Tue Wed Thu Fri Sat Sun"

# This command '\n' appears to put the information following it on a separate line.
months = "Jan\nFeb\nMar\nMay\nJun\nJu\nAug"

puts "Here are the days: #{days}"
puts "Here are the months: #{months}"

# This seems to allow a large input on multiple lines.
puts %q{
There's something going on here.
With the three double-quotes.
We'll be able to type as much as we like.
Even 4 lines if we want, or 5, or 6.
}

tabby_cat = "\tI'm tabbed in."
persian_cat = "I'm split\non a line."
backslash_cat = "I\m \\ a \\ cat."

#Using triple single-quotations doesn't read the escape sequences, but rather prints exactly what is inside it.
fat_cat = '''
Ill do a list:
\t* Cat food
\t* Fishies
\t* Catnip\n\t* Grass
'''

puts tabby_cat
puts persian_cat
puts backslash_cat
puts fat_cat

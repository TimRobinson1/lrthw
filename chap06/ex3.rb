#Study Drill Number 5 - testing with single quotation marks

#Variable for number of people
types_of_people = 10

#String statement using variables.
x = 'There are #{types_of_people} types of people.'

#New variables
binary = 'binary'
do_not = 'don't'

#String statement using variables.
y = 'Those who know #{binary} and those who #{do_not}.'

#Returns the values of the variables.
puts x
puts y

#Returns the variable values inside a string.
puts 'I said #{x}.'
puts 'I also said: "#{y}".'

#Boolean variable.
hilarious = false

#String statement with variable inside.
joke_evaluation = 'Isn't that joke so funny?! #{hilarious}.'

#Returns value of variable.
puts joke_evaluation

#Variables' strings.
w = 'This is the left side of...'
e = 'a string with a right side.'

#Combines the two above strings.
puts w + e

#We can see that using single quotations does not work in this instance due to the fact that ruby is reading the ' in the word "don't" as the end of the string.

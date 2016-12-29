# When these commands are entered with irb, this is what happens.

things = ['a', 'a', 'c', 'd']
# => ["a", "b", "c", "d"]

puts things[1]
# b
# => nil

things[1] = 'z'
# "z"

puts things[1]
# z
# => nil

things
# => ["a", "z", "c", "d"]

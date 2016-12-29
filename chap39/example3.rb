# When these commands are entered with irb, this is what happens.

stuff[1] = "Wow"
# => "Wow"

stuff[2] = "Neato"
# => "Neato"

puts stuff[1]
# Wow
# => nil

puts stuff[2]
# Neato
# => nil

stuff
# => {"name"=>"Zed", "age"=>39, "height"=>74, "city"=>"San Francisco", 1=>"Wow", 2=>"Neato"}

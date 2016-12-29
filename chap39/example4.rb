# When these commands are entered with irb, this is what happens.

stuff.delete('city')
# => "San Francisco"

stuff.delete(1)
# => "Wow"

stuff.delete(2)
# => "Neato"

stuff
# => {"name"=>"Zed", "age"=>39, "height"=>74}

# Footnoted and some lines added.

class Song

  def initialize(lyrics)
    @lyrics = lyrics
  end

  def sing_me_a_song()
    @lyrics.each {|line| puts line }
  end
end

# This variable is taken as part of the class Song and applied to the sing_me_a_song function by the proceeding command, happy_bday.sing_me_a_song()
happy_bday = Song.new(["Happy birthday to you",
            "I don't want to get sued",
            "So I'll stop right there",
            "This line is here too",
            "Do dee do dee do do"])

# Essentially, these arrays are being passed on as strings of lyrics.
bulls_on_parade = Song.new(["They rally around tha family",
            "With pockets full of shells"])

# These commands call the class to carry out taking the happy_bday variable and applying it through the sing_me_a_song function.
happy_bday.sing_me_a_song()

bulls_on_parade.sing_me_a_song()

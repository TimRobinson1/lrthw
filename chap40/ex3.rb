# Lines of the songs changed and an extra added to test how it all works.

class Song

  def initialize(lyrics)
    @lyrics = lyrics
  end

  def display_song()
    @lyrics.each {|line| puts line }
  end
end

radioactive = Song.new(["I'm waking up",
            "I feel it in my bones",
            "Enough to make my systems blow",
            "Welcome to the new age",
            "To the new age",
            "Welcome to the new age",
            "To the new aaaaage"])

# Essentially, these arrays are being passed on as strings of lyrics.
speech = Song.new(["The only way towards the future is to fight",
            "To fight for freedom",
            "To fight for liberty and equality",
            "To fight with vigor in our hearts and strength in our core",
            "To fight, and stand tall.",
            "That.  Is the only way towards the future we seek."])

# These commands call the class to carry out taking the happy_bday variable and applying it through the sing_me_a_song function.
radioactive.display_song()

speech.display_song()

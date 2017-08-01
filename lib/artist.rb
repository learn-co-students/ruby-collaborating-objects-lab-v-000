#The Artist class will be responsible for either creating the artist (if the artist doesn't exist in our program yet) or
#finding the instance of that artist (if the artist does exist).


class Artist

  attr_accessor :name

  def initialize(name)
      @name = name
      @songs = []
  end

  def find_or_create_by_name(name)
    @name = name
    # This class method should take the name that is passed in (remember, it will be a string), and do one of two things.
    # Find the artist instance that has that name or create one if it doesn't exist. Either way, the return value of the method will be an
    # instance of an artist with the name attribute filled out.

  end

  def add_song(song)
  # This instance method exists to tell the artist about its songs. Simply take the Song instance that is passed in as an argument and store it
  #in a songs array with all the other songs that belong to the artist.
    @songs << song
    song.artist = self
    # @@song_count += 1
  end

  def songs
    @songs
  end

end

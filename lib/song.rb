require 'pry'

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
  #Associates the artist's name with the the Artist class
  #Uses the Artist.find_or_create_by_name method to make sure it doesn't create multiple of the same artists.
  #adds a new song to the artist class from the song isntance
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

  def self.new_by_filename(file_name)
    #creates a new instance of a song from the file that\'s passed in
    #The method turns the filename string into an array.
    #The array's first position is the artist, it's second position is the song name, and the third position is the genre.
    #It creates a new song using the song's name (first position of the array).
    #It creates an Artist object with the second position of the array.
    #Then it returns the song.
    break_up_file = file_name.split(" - ")
    artist = break_up_file[0]
    name = break_up_file[1]
    song = Song.new(name)
    song.artist_name=(artist)
    song
    #binding.pry
  end
end

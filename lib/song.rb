require 'pry'
class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    artist, song = filename.split(" - ")
    new_song = self.new(song)
    new_song.artist_name = artist
    #binding.pry
    new_song.artist.add_song(new_song)
    new_song.save
    #this method was not pulling information from the @song[] array in order to provide the test with a false statement that the array was not empty.  
  end

  def self.find_by_artist(artist)
    Song.all.select do | song |
      song.artist == artist
    end
  end
  
  def self.all
    @@all
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end
  
  def save
    @@all << self
    self
  end
end
require "pry"
class Song 
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
  @name = name
  end
  
  def self.new_by_filename(filename)
    # binding.pry
    artist, song = filename.split(" - ")
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song.save
    new_song.artist.songs << new_song
    new_song
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


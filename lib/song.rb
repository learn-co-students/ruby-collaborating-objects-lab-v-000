require 'pry'
class Song 
  
  @@all = []
  
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
  
  def name=(name)
    @name = name
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(name)
  end
  
  def save
    @@all << self
    self
  end
  
  def self.new_by_filename(file)
    a, s = file.split(" - ")
    new_song = Song.new(s)
    new_song.artist_name = a
    new_song.save
  end
end 
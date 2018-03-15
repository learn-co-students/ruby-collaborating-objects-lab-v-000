require 'pry'

class Song
  
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
    @artist = artist
  end
  
  def self.new_by_filename(filename)
    data = filename.split(" - ")
    name = data[1]
    artist_string = data[0]
    song = self.new(name)
    if Artist.all.all? { |artist| artist.name != artist_string }
      song.artist_name(artist_string)
    else 
      song
    end
    song
  end
  
  
  def artist_name(artist_name)
    if (self.artist.nil?)
      self.artist = Artist.new(artist_name)
    else
      self.artist.name = artist_name
    end
  end

end
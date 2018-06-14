require 'pry'

class Song
  attr_accessor :artist, :name, :genre
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end  
  
  def self.new_by_filename(filename)
    song_name = filename.split(" - ")[1]
    artist_n = filename.split(" - ")[0]
    song = self.new(song_name)
    song.artist_name = artist_n
    
    artist_instance = Artist.find_or_create_by_name(artist_n)
    artist_instance.songs << song_name

    song
  end
  
  def artist_name=(name)
    # binding.pry
    # self is Song
    if (self.artist.nil?)
       self.artist = Artist.find_or_create_by_name(name)
    else
      self.artist.name = name
    end
  end

end
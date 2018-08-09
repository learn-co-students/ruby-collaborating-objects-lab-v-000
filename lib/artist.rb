require 'pry'
class Artist 
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
  end
  
  def all 
    @@all
  end
  
  def self.all 
    @@all
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
    song
  end 
  
   def songs
    @songs
  end
  
  def save
    @@all << self
  end

  def self.find_or_create_by_name(artist_name)
    if @@all.find {|artist| artist.name == artist_name} == nil 
      new_artist = self.new(artist_name)
      new_artist
    else 
      @@all.find {|artist| artist.name == artist_name}
    end
  end
  
  def print_songs
    self.songs.each {|song| puts song.name}
  end 
  
      
end
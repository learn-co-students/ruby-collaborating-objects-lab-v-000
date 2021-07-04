require 'pry'

class Artist
  
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def save
    @@all << self
  end
  
  def self.find_or_create_by_name(name)

    found_artist = nil
    
    @@all.each do |artist| 
      if artist.name == name 
        found_artist = artist
      end 
    end
    
    if found_artist == nil  
      artist = Artist.new(name)
      @@all << artist
      artist
    else
      found_artist
    end
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    @songs << song
  end
  
  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
  
end
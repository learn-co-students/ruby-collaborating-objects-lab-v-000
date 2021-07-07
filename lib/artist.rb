require "pry"
class Artist 
  
  attr_accessor :name, :songs
  
  @@all = []
  
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def self.all
    @@all
  end
  
  def songs 
    @songs
  end
  
  def save
    @@all << self
  end

  def self.create(name)
    artist = self.new(name)
    artist.save
    artist
  end
  
  def self.find_by_name(artist_name)
    @@all.find{|artist| artist.name == artist_name}
  end
  
  def self.find_or_create_by_name(artist_name)
    if self.find_by_name(artist_name)
      self.find_by_name(artist_name)
    else
      self.create(artist_name)
    end
  
  end
  
  def add_song(song)
    song.artist = self
    @songs << song
  end
  
  def print_songs
    @songs.each {|song| puts song.name}
  end 
  
  
end
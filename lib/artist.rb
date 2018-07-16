require "pry"
class Artist 
  attr_accessor :name, :song
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    @songs << song
  end
  
  def songs 
    @songs
  end
  
  def save
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
  def self.find_or_create_by_name(name)
    if artist = self.all.find{|x| x.name == name}
      artist
    else 
      artist = self.new(name)
      artist.name = name
      @@all << artist
      artist
    end
  end  
  
  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end
end
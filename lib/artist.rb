require 'pry'

class Artist
attr_accessor :name, :songs

@@all = []

  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    @songs << song
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
  end
  
  def self.find_by_name(name)
    self.all.find {|artist| artist.name == name }
  end
  
  def self.create_by_name(name)
    new_artist = self.new(name) #=> create a new instance of an artist and set it equal to a variable; pass in name 
    new_artist.save
    new_artist
  end
  
  def self.find_or_create_by_name(name)
    if self.find_by_name(name)
      return self.find_by_name(name)
    else
      self.create_by_name(name)
    end
  end
  
  def print_songs
    self.songs.each do |song|
      puts song.name 
    end
  end
  
end
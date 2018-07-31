require 'pry'
class Artist
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def self.all
    @@all
  end
  
  def songs
    # song = Song.new(song)
    # songs << song
    # Song.find_by_artist(self)
    @songs
  end
  
  def print_songs
    songs.each {|s| puts s.name}
    # songs
  end
  
  def add_song(song)
    # binding.pry
    # tell the artist about its song
    @songs << song
    # tell the song it belongs to the artist
    song.artist = self
    
  end
  
  def save
   @@all << self
  end
  
 def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
  end

  def self.find(name)
    self.all.find {|artist| artist.name == name }
  end

  def self.create(name)
    artist = self.new(name)
    artist.save
    artist
  end
end

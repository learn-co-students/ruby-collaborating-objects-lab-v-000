
class Artist 
  @@all = []
  @@passer = {}
  attr_accessor :name 

  def initialize(name)
    @name = name  
    @songs = []
    @@all << self
    @@passer[name] = self
  end 

  def self.create_artist(name)
    artist = Artist.new(name)
    artist
  end
    
  def add_song(song)
    @songs << song 
    song.artist =  self 
  end 

  def self.find_or_create_by_name(name)
    @@passer.keys.include?(name) ? @@passer[name] : Artist.create_artist(name)
  end 

  def print_songs 
    @songs.each { |song| puts song.name } 
  end

  def songs
    @songs
  end

  def save
    
  end 

  def self.all
    @@all
  end 
end 
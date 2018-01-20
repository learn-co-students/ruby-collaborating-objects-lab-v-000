require 'pry'
class Artist
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  
  end
  
  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
    # if self.find(name)
    #   self.find(name)
    # else
    #   self.create(name)
    # end
  end

  def self.find(name)
    self.all.find {|artist| artist.name == name} 
  end

  def self.create(name)
    artist = self.new(name)
    artist.save
    artist
  end
  #binding.pry

  def print_songs
    
    self.songs.each { |song| puts song.name }
    #puts @songs.name
  end
end
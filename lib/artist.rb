require 'pry'

class Artist
  attr_accessor :name, :songs
  
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def save  #stores the artist to the @@all class variable.
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if self.all.detect {|artist| artist.name == name}
      nil
    else
      artist = self.new(name)
    end
  end

  def print_songs
    @songs.each {|song| puts song.name} #puts vs return
  end

end

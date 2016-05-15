require 'pry'

class Artist
  attr_accessor :name, :songs, :song
  
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

  def self.all
    @@all
  end

  def save
    
    @@all << self
  end

def Artist.find_or_create_by_name(name)
  artist_instance = ""

 artist_instance = @@all.detect(artist_instance = Artist.new(name).save){ |artist| artist.name == name}

end

  def print_songs
    @songs.each {|song| puts song.name}
  end


end
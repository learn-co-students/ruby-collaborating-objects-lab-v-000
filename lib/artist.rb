require 'pry'
class Artist
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def self.all 
    @@all 
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    artist = @@all.detect {|artist| artist.name = name}
    if artist.nil?
      Artist.new(name)
    else
      artist
    end
  end

  def add_song(song)
    @songs << song
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

end
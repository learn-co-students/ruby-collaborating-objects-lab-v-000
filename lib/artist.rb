require "pry"
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
    @songs
  end

  def add_song(song)
  @songs << song
  song.artist = self
  end

  def save
    @@all << self
  end

   def self.new_by_name(name)
    artist = Artist.new(name)
    artist.name = name
    artist
  end

  def self.create_by_name(name) 
    artist = Artist.new_by_name(name)
    artist.save
    artist
  end

  def self.find_by_name(name)
    artist = Artist.all.find {|artist| 
      artist.name == name}
  end

  def self.find_or_create_by_name(name) 
    self.find_by_name(name) ||
    self.create_by_name(name)
  end

  def print_songs
    songs.each {|song| puts song.name}
  end


end
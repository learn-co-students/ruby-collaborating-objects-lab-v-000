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
  #@@song_count += 1 
  end

  def save
    @@all << self
  end

   def self.new_by_name(name)
    artist = self.new(name)
    artist.name = name
    artist
  end

  def self.create_by_name(name) 
    artist = Artist.new_by_name(name)
    @@all << artist
    artist
  end

  def self.find_by_name(name)
    @@all.find {|artist| 
      if artist.name == name
        artist
      end}
  end

  def self.find_or_create_by_name(name) 
    self.find_by_name(name) ||
    self.create_by_name(name)
  end

  def print_songs
    songs.each {|song| puts song.name}
  end


end
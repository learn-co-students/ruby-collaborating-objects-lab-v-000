require 'pry'

class Artist
  attr_accessor :name, :songs, :song
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def save
  self.class.all << self
  end

  def self.find_or_create_by_name(name)
   find_by_name(name)|| create_by_name(name)
  end

def self.find_by_name(name)
    self.all.find {|s| s.name == name}
end

def self.create_by_name(name)
  artist = self.new(name)
  artist.save
  artist
end

  def print_songs
    @songs.collect {|song| puts song.name}
  end
end

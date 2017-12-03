require 'pry'

class Artist

  attr_accessor :name, :songs, :song, :artist
  @@all = []

  def initialize(name)
    @name = name
    @songs =[]
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def self.save #self?
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if @@all.include?(name)
      name
    else
      self.new(name)
    end
  end

  def print_songs
    @@all
  end

end

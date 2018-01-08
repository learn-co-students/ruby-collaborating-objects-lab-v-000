require 'pry'

class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def save
    @@all << self
  end

  def add_song(song)
    self.songs << song
    song.artist == self
  end

  def self.find_or_create_by_name(name)

  end

  def print_songs
    @songs
  end

end

require 'pry'

class Artist

  attr_accessor :name, :songs, :song, :artist
  @@all = []

  def initialize(name)
    @name = name
    @songs =[]
  end

  def add_song(song)
    song.artist = self
    self.songs << song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    @@all.find {|artist| artist.name == name} || self.new(name)
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

end

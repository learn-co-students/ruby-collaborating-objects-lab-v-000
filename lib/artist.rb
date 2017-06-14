require "pry"
class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []

  end

  def self.find_by_name(name)
    self.all.find { |artist| artist.name == name }
  end

  def self.find_or_create_by_name(artist)
    self.find_by_name(artist) ? self.find_by_name(artist) : Artist.new(artist)
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end


  def print_songs
    @songs.each { |song| puts song.name }
  end
end

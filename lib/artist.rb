require 'pry'

class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.find_or_create_by_name(artist_name)
    self.find(artist_name) ? self.find(artist_name) : self.create_by_name(artist_name)
  end

  def self.find(artist_name)
    self.all.find { |artist| artist.name == artist_name }
  end

  def self.create_by_name(artist_name)
    self.new(artist_name).tap { |artist| artist.save }
  end

  def print_songs
    songs.each { |song| puts song.name }
  end
end

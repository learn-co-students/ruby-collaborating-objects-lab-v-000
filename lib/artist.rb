require "pry"
class Artist

  @@all = []

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(title)
    self.songs << title
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.detect { |artist| artist.name == name }
  end

  def self.create_by_name(name)
    new_artist = Artist.new(name)
    new_artist.name = name
    new_artist 
  end

  def self.find_or_create_by_name(artist)
    self.find_by_name(artist) || self.create_by_name(artist)
  end

  def print_songs
    self.songs.each { |song| puts song }
  end
end
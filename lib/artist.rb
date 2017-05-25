require 'pry'
class Artist
  attr_accessor :name, :songs
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def add_song(songs)
    @songs << songs
    songs.artist = self
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create_by_name(name)
    song = self.create
    song.name = name
    song
  end

  def self.find_by_name(name)
    self.all.detect { |artist| artist.name == name }
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.new(name)
  end

  def print_songs
    songs.each {|song| puts song.name}
  end

end

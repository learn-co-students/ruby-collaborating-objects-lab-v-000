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

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(artist_name)
    self.all.detect do |artist|
      artist.name == artist_name
    end
  end

  def self.create_by_name(artist)
    artist = self.new(artist)
    artist.save
    artist
  end

  def self.find_or_create_by_name(artist)
    if self.find_by_name(artist)
      self.find_by_name(artist)
    else
      self.create_by_name(artist)
    end
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

end

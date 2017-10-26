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

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    find_by_name(name) ? find_by_name(name) : create_by_name(name)
  end

  def self.find_by_name(name)
    @@all.detect {|artist| artist.name == name}
  end

  def self.create_by_name(name)
    new_artist = self.new(name)
    new_artist.save
    new_artist
  end

  def print_songs
    @songs.each { |s| puts s.name }
  end

end

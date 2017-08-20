require 'pry'

class Artist
  attr_accessor :name, :songs

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def save
    self.class.all << self
  end

  def self.create_by_name(name)
    new_artist = self.new(name)
    new_artist.save
    new_artist
  end

  def self.find_by_name(name)
    self.all.detect { |artist| artist.name == name }
  end

  def self.find_or_create_by_name(name)
    ( self.find_by_name(name) ? self.find_by_name(name) : self.create_by_name(name) )
  end

  def print_songs
    @songs.each {|song| puts "#{song.name}"}
  end
end
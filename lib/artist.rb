require 'pry'

class Artist
  attr_accessor :name
  def initialize(name)
    @name = name
    @songs = []
    @@all << self unless self.class.find_by_name(name)
  end

  @@all = []
  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def songs
    @songs
  end

  def self.create_by_name(name)
    name = Artist.new(name)
  end

  def self.find_by_name(name)
    self.all.detect {|artist| artist.name == name}
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end

  def print_songs
    self.songs.each do |song|
      puts "#{song.name}"
    end
  end

  def save
    @@all << self
  end
end
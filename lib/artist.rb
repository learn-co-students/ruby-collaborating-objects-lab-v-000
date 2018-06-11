## This File will define the Artist class
require 'pry'
class Artist

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def self.find_or_create_by_name(name)
    artist = @@all.detect {|obj| obj.name == name }
    if !artist
      artist = Artist.new(name)
    end
    artist
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end

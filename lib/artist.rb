#This class will either create the artist (if it does not exist yet) or find the instance of that artist
require 'pry'

class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
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

  def self.find_or_create_by_name(name)
    @@all.each do |artist|
      if artist.name == name
        return artist
      end
    end
    self.new(name)
  end

  def print_songs
    @songs.each {|song| puts song.name  }
  end
end

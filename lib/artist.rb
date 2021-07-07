require 'pry'

class Artist

  attr_accessor :name, :songs

    @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []

  end

  def self.all
    @@all

  end

 def song=(song)
    self.song = song
    @songs << song
  end

  def save
  @@all
  end

def add_song(song)
  #a = self.new
  @songs << song
  song.artist = self
end

def print_songs
  @songs.each{|song| puts song.name}
end


def self.create_by_name(name)
  artist = self.new(name)
  artist.name = name
  artist.save
  artist
end

def self.find_by_name(name)
  self.all.detect{|artist| artist.name == name}
end

def self.find_or_create_by_name(name)
#song = self.new
  if self.find_by_name(name)
    self.find_by_name(name)
  else
    self.create_by_name(name)
      end
    end




end

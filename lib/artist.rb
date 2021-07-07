require 'pry'
class Artist

attr_accessor :name
attr_reader :songs
@@all = []

def initialize(name)
  @name = name
  @songs = []
end

def self.all
@@all
end


def self.find(name)
  self.all.find{|artist| artist.name == name}
end

def self.create(name)
  artist = self.new(name)
  artist.save
  artist
end

def self.find_or_create_by_name(name)
  self.find(name) || self.create(name)
end

def songs=(songs)
  @songs = songs
end

def save
  @@all << self
end

def add_song(song)
  @songs << song
  song.artist = self #if song.artist != self
end

def print_songs
self.songs.each{|song| puts song.name}
end

end

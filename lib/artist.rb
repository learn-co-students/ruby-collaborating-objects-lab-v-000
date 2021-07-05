require "pry"
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

def self.all
  @@all
end

def save
  self.class.all << self
end

def self.find_or_create_by_name(name)
  artist_name = self.all.find{|artist| artist.name == name}
  if artist_name
    artist_name
  else
    # binding.pry
    new_artist = self.new(name)
    new_artist.save
    new_artist
  end
end

def print_songs
  songs.each{|song| puts song.name}
  end
end

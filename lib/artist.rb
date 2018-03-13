require 'pry'
class Artist

attr_accessor :name
@@all = []

def initialize(name)
  @name = name
  @songs = []
end

def add_song(title)
  song = Song.new(title)
  @songs << song.name #changed this
  song.artist = self
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

  if self.all.find {|x| x.name == name}
    self.all.find {|x| x.name == name}
  else
    new_artist = Artist.new(name)
    new_artist.save
    new_artist
  end
end

def print_songs
    puts self.songs.collect {|x| x.name}
end

end

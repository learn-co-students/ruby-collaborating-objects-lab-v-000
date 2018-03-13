
class Artist

attr_accessor :name

@@all = []

def initialize(name)
  @name = name
  @songs = []
  self.save
end


def add_song(song)
  @songs << song
end


def songs
  @songs
end


def save
  self.class.all << self
end


def self.all
  @@all
end


def self.find_by_name(artist_name)
  self.all.detect {|artist| artist.name == artist_name}
end


def self.create_by_name(name)
  artist = Artist.new(name)
end


def self.find_or_create_by_name(name) 
  self.find_by_name(name) || self.create_by_name(name)

end

def print_songs
  @songs.each {|song| puts "#{song.name}"}
end

end





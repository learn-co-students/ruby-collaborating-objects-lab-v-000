require 'pry'

class Artist
attr_accessor :name

@@all = [ ]

def initialize(name)
  @name = name
  @songs = [ ]
end

def self.all
  @@all
end

def songs
  @songs
end


# def artist_name= (name)
#   if (self.artist.nil?)
#    self.artist = Artist.new(name)
#   else
#    self.artist.name = name
#   end
# end

def add_song(song)
  song.artist = self
  @songs << song
end


def save
  # self.artist = Artist.new(name)
  @@all << self
end

def self.find_or_create_by_name(name)
  artist_exist = @@all.find{ | artist | artist.name == name}
  if artist_exist
    artist_exist
  else
    artist = Artist.new(name)
    artist.save
    artist
  end
end

def print_songs
  songs.each { | song | puts song.name }
end

end

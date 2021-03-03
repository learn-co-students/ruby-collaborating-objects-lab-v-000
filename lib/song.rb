require 'pry'

class Song

  @@all = []

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

def self.new_by_filename(filename)
  #binding.pry
  file_parsed = filename.split(/ - (.+) - (.+).mp3/)

  song = Song.new(file_parsed[1])
  song.artist = Artist.find_or_create_by_name(file_parsed[0])
  song
end

def artist_name=(artist)
  self.artist = Artist.find_or_create_by_name(artist)
end

end
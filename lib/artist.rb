
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

  def save
    @@all << self
end

  def self.all
    @@all
  end

def self.find_or_create_by_name(name)
  self.all.each do |artist|
    if artist.name == name
      return artist
    end
  end
  artist = self.new(name)
  artist.save
  return artist
end

  def print_songs
    songs.each do |song|
      puts song.name
    end
  end

  end
# =======
# class Artist
#   attr_accessor :name, :songs
#
#   def initialize(name)
#     @name = name
#     @songs << songs
#   end
#
#   @songs = []
# >>>>>>> 167c009d5607e937501addedb58a785d60e8c771
#
#
# end

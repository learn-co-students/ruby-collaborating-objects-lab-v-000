require 'pry'
class Artist
  @@all = []

  attr_accessor :name, :songs
  #
  def initialize(name)
    @name = name
    @songs = songs 

  end

  def self.all
    @@all
    binding.pry
  end


  def self.add_song(song_one)
    self.songs = song_one

  end
  #
  #
  #
  #
  #
  #
  #
  #
  #
  #
  #
  #
  #
  #   #binding.pry
  #
  #

end

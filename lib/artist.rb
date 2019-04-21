require 'pry'
class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def self.all
    @@all
  end

  def save
  @@all << self
  end

  def self.find_or_create_by_name(name)
      if @@all.detect { |a| a.instance_variable_get(@name) }
      else artist = Artist.new(name)
    end
  end



  # def add_song_by_name(name)
  #   song = Song.new(name)
  #   @songs << song
  #   song.artist = self
  # end

  # binding.pry

# This class method should take the name that is passed in (remember, it will be a string), and do one of two things.
#   1. Find the artist instance that has that name
# or
# 2. create one if it doesn't exist.
#   Either way, the return value of the method will be an instance of an artist with the name attribute filled out.


  # def self.find_or_create_by_name(name)
  #     if self.name == self.name
  #       self
  #     elsif self.name.nil?
  #       artist = Artist.new(name)
  #       artist
  #     end
  #   end
end

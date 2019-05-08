require 'pry'
class Artist
  attr_accessor :name, :file_name
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
    # song.artist = self
  end

  def self.all
    @@all
  end

  def save
  @@all << self
  end

# This class method should take the name that is passed in (remember, it will be a string), and do one of two things.
#   1. Find the artist instance that has that name
# or
# 2. create one if it doesn't exist.
#   Either way, the return value of the method will be an instance of an artist with the name attribute filled out.

   def self.find_or_create_by_name(name)
     if self.find(name)
       self.find(name)
     else
       self.create(name)
     end
   end

   def self.create(name)
     self.new(name).tap do |artist|
       artist.name == name
     end
   end

   def self.find(name)
     self.all.find do |artist|
       artist.name == name
     end
   end

  #  = Artist.new(file_name.scan(/^(\w+ \w+)/).join)
   def print_songs
      @songs.each { |a| puts a.name }
   end
  #  binding.pry
end

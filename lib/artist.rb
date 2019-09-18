require 'pry'

class Artist
 attr_accessor :name, :genre

 @@all = []

 def self.all
   @@all
 end

 def initialize(name)
   @name = name
   @songs = []
 end

 def add_song(song)
  #  binding.pry
   @songs << song
 end

 def songs
   @songs
 end

 def save
   @@all << self
 end

def self.create(name)
  artist = Artist.new(name)
  artist.save
  artist
end

 def self.find_or_create_by_name(name)
   !self.all.detect{|artist| artist.name == name} ? artist = self.create(name) : self.all.detect {|artist| artist.name == name}

 end

 def print_songs
   @songs.each {|song| puts song.name}
 end





end

require 'pry'
class Artist
attr_accessor :name, :songs
   def initialize(name)
     @name = name
     @songs = []
   end

    @@all = []

   def songs
     @songs
   end

   def add_song(song)
     @songs << song
     song.artist = self
#     binding.pr
   end
   def save
     @@all << self
   end
   def self.all
     @@all
    # binding.pry
   end

   # anytime you have a create method of some sort, something is being saved.
   def self.find_or_create_by_name(name)
      artist = self.all.find do |x|
        x.name == name
      end
      if !artist
        artist = self.new(name)
        artist.save
      end
      artist
  #    binding.pry

   end

   def print_songs
   i = 0
    until i === songs.length
        #binding.pry
        puts songs[i].name
        i+=1
      end
   end
end

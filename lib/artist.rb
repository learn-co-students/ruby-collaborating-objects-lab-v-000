require 'pry'
class Artist
   attr_accessor :name
   @@all = []

   def initialize(name)
      @name=name
      @songs = []  
   end

   # this method must be created to expose the @@all class variable
   def self.all
      @@all
   end

   def add_song(song)
      song.artist = self
      self.songs << song
   end

   def songs
      @songs
   end

   def save
      @@all << self
   end

   # def self.find_or_create_by_name(name)
   #    if @@all.find{|artist| name == artist.name }
   #       return @@all.find{|artist| name == artist.name }
   #    else
   #       Artist.new(name).tap{|artist| artist.save}
   #    end
   # end

   def self.find_or_create_by_name(name)
      if @@all.any?{|artist|name == artist.name}
         find_by_name(name)
      else
         create_by_name(name)
      end
      
   end

   def print_songs
      @songs.each do |song|
         puts song.name
      end
   end

   
   def self.create_by_name(name)
      Artist.new(name).tap{|artist| 
      artist.save
      }
    end
   
   def self.find_by_name(name)
      @@all.find{|artist|
         name == artist.name 
      }
   end

end

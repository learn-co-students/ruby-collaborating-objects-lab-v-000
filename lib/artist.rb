require 'pry'
class Artist
  attr_accessor :name, :song
   @@all = []


   def self.all
     @@all
   end


   def initialize(name)
     @name = name
     @@songs =[]
     @@all << self
   end

   def songs
     @@songs
   end

   def self.find_or_create_by_name(name)
     binding.pry
     @@all.detect{|name| artist.name == name}
     name

   end


   def save
     self.class.all << self
   end

   def add_song(song)
     @@songs << song
   end

end

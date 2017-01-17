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
   end

   def songs
     @@songs
   end

   def self.new_by_name(name)
    artist = self.new(name)        #creates the new Artist. Use self = Artist
    artist.name = name   #gives it a name
    artist                    #instance of Artist
  end

  def self.create
    artist = Artist.new
    artist.save
    artist
end

   def self.find_by_name(name)
    self.all.detect{|artist| artist.name == name}
  end

  def self.create_by_name(name)
    artist = Artist.new_by_name(name)
    artist.save
    artist                    #instance of Artist
  end

   def self.find_or_create_by_name(name)
       self.find_by_name(name) || self.create_by_name(name)
   end

   def save
     self.class.all << self
   end

   def add_song(song)
     @@songs << song
   end

   def print_songs
     self.songs.each{|artist| puts "#{artist.name}"}
   end
end

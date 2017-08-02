require 'pry'
class Artist

 attr_accessor :name, :songs
 @@all = []

 def initialize(name)
   @name= name
   @songs = []
 end

def self.all
  @@all
end


 def add_song(song)
   @songs << song
   song.artist = self
 end

 def save
   @@all << self
 end

 def self.find_or_create_by_name(name)
    #finds an artist by name and uniqueness
      if artist = @@all.detect {|n| n.name == name }
        artist
      else
        artist = self.new(name)
        artist.save
        artist
      #if none exists creates new instance of Artist
    end


  end


  def print_songs
    @songs.each {|song| puts song.name}
  end
   #create new artist by name
   #return instance of artist with name attribute


end

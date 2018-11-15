require 'pry'

class Song #creates a class
attr_accessor :name, :artist #each class created has two attributes

def initialize(name) #each object is initialized with a name
  @name = name #sets the name to a variable
end

def artist_name=(name) #writer method
  self.artist = Artist.find_or_create_by_name(name)
  artist.add_song(self)
end


def self.new_by_filename(filename)
#binding.pry
 song_details = filename.chomp(".mp3").split(" - ")
 song = Song.new(song_details[1])
 song.artist_name = song_details[0]
 #song.artist_name = song_details[0] #this was the one that was orignally passing with only 5 errors left
 song
end


end

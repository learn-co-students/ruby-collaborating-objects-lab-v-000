require 'pry'

class Song #creates a class
attr_accessor :name, :artist #each class created has two attributes

def initialize(name) #each object is initialized with a name
  @name = name #sets the name to a variable
end

def artist_name=(name) #writer method sets variable artist_name to equal argument
  self.artist = Artist.find_or_create_by_name(name) # find_or_create_by_name method used on Artist class with original name argument passed in is equal to self of artist of song object created
  artist.add_song(self) #add_song method used on artist of song object created #why does passing self work with this line?
end


def self.new_by_filename(filename) #passing in filename (used binding.pry to find out what filename looks like)
#binding.pry
 song_details = filename.chomp(".mp3").split(" - ") #chomp returns a string with record separator removed; .split splits the string into array of substrings
 song = Song.new(song_details[1]) #let song equal a new instance of song class created with argument equal to [1] in array of substring created above
 song.artist_name = song_details[0] #let the artist of the song object equal to [0] in array of substring
 song #return the song variable created above
end


end

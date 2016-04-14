require 'pry'

class Artist

@@all = []

attr_accessor :name, :artist


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

def save
  @@all << self
end

def self.all
  @@all 
end

def self.find_or_create_by_name(artist_name)


if @@all.detect { |x| x.name == artist_name } != nil
  @@all.detect { |x| x.name == artist_name } 
else
  Artist.new(artist_name)
end

end


def print_songs
  @songs.each {|x| puts x.name}
end





end




#Song Class - 1. parse a filename to find song name and Artist name. separate "-"[0],[1] (filename.split(" - ")[1])
#2. create a song instance using the string parsed
#3. assosicate the new song with an artist. Method = #artist(), Song#artist(artist_name) . takes in the name and gets the artist object

#Song#Artist_name=(name) 1. turn the artist name as a string into object
#2. either created the instance or it exists and find it. - collaborate iwth Artist class. 
# Artist.find_or_create_by_name(artists-name-here)
#3 assign the song to the artist
#4 Artist #add_song(song)

#Artist Class
#Artist.findorcreateby name ( name) - take string. Find artist instance or create it. return value of the instance of artist
#Add_song(song) - take the song instance as argument and store in songs array. 
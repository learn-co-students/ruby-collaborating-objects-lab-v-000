require 'pry'

class Song
  
 attr_accessor :artist, :name
  
 def initialize(name)
    @name = name
 end
  
 def self.new_by_filename(filename)
    song = filename.split(" - ")[1]
    newSong = self.new(song)
    artist = filename.split(" - ")[0]
    newSong.artist_name = artist
    newSong
 end
  
 def artist_name=(artistName)
    self.artist = Artist.find_or_create_by_name(artistName)
    artist.add_song(self)
  end
  
  
end
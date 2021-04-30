require 'pry'
class Song
 attr_accessor :name, :artist

def initialize(name)
  @name = name
end

def artist_name=(name)
   artist = Artist.find_or_create_by_name(name)
   self.artist = artist
   artist.add_song(self)
end

def self.new_by_filename(file_name)
  artist, song = file_name.split(" - ")
  song_new = self.new(song)
  song_new.artist_name = artist
  

  song_new
end


end

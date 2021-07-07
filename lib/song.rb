require 'pry'
class Song

attr_accessor :name
attr_reader :artist

def initialize(name)
  @name = name
end


def self.new_by_filename(file_name)
  song_name = file_name.split(" - ")[1]
  artist_name = file_name.split(" - ")[0]
  artist = Artist.find_or_create_by_name(artist_name)
  song = self.new(song_name)
  artist.add_song(song)
  song
end

def artist=(artist)
@artist = artist 
#  artist.add_song(self) unless artist.songs.include?(self)
end

end

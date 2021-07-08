require 'pry'
class Song

attr_accessor :name, :artist

def initialize(name)
  @name = name
end


def self.new_by_filename(filename)
  split_artist_song = filename.split(" - ")
  song = Song.new(split_artist_song[1])
  song.artist_name=(split_artist_song[0])
  song
end

def artist_name=(name)
  self.artist = Artist.find_or_create_by_name(name)
  self.artist.add_song(name)
end


end

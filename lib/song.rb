require 'pry'

class Song
  attr_accessor :name, :artist

def initialize(name)
  @name = name
end

def self.new_by_filename(filename)
  artist_name = filename.split(" - ")[0]
  song_name = filename.split(" - ")[1]
  artist = Artist.find_or_create_by_name(artist_name)
  song = self.new(song_name)
  song.artist = artist
  song
end

end

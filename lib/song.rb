require "pry"
class Song

attr_accessor :name, :songs, :artist

def self.new_by_filename(file_name)
    new_array = file_name.split(" - ")
    name = new_array[1]
    artist_name = new_array[0]
    song = Song.new(name)
    artist = Artist.find_or_create_by_name(artist_name)
    song.artist = artist
    artist.add_song(song)
    song

end

def initialize(name)
  @name = name
end

end

require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    artist_string = filename.split(" - ")[0]
    song_string = filename.split(" - ")[1]
    song_object = Song.new(song_string)
    song_object.artist = Artist.find_or_create_by_name(artist_string)
    song_object.artist.add_song(song_string)
    song_object
  end

end
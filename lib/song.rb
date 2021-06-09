require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(song_name)
    @name = song_name
  end

  def set_artist_name=(string)
    artist = Artist.find_or_create_by_name(string)
    self.artist = artist
  end

  def self.new_by_filename(file_string)
    x = file_string.split(" - ")
    new_song = Song.new(x[1])
    new_song.set_artist_name =  x[0]
    new_song
  end
end


#    x = file_string.split(" - ")
#    new_song = Song.new(x[1])
#    new_song.artist_name = (x[0])
#    new_song
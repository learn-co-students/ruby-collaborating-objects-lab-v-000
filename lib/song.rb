require 'pry'

class Song
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
  end

  def Song.new_by_filename(file_name)
    song_artist_genre = file_name.split(" - ")
    artist_name = song_artist_genre[0]
    song_name = song_artist_genre[1]
    song = Song.new(song_name)
    song.artist_name=(artist_name)
    song
  end
  #if there is already an artist object with same name, I want to add the artist name to the song
  #else I want to create a new artist object using Artist.new
  def artist_name=(name)
    unless Artist.find_by_name(name)
      self.artist = Artist.new(name)
    else
      self.artist = name
    end
  end
end
require 'pry'

class Song
  attr_accessor :file_name, :name, :artist, :song

  def initialize(name)
    @name = name

  end

  def artist_name=(name) #sets artist object to belong to the song
    song.artist = name
  end

  def artist_name=(artist_name) #helper method for new_by_filename
    @artist
  end

  def self.new_by_filename(file_name)
      song_name = file_name.split(" - ")[1]
      song = self.new(song_name)
      artist_name = file_name.split(" - ")[0]
      song.artist = Artist.find_or_create_by_name(artist_name)
      song
	  end

end

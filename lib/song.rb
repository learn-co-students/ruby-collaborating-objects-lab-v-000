require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    song_name = file_name.split(" - ")[1]
    artist_name_string = file_name.split(" - ")[0]
    song = Song.new(song_name)
    song.artist=(artist_name_string)
    song
  end

  def artist=(artist_name_string)
    if artist_name_string.is_a? Artist
      @artist = artist_name_string
    else
      @artist = Artist.find_or_create_by_name(artist_name_string)
    end
  end

end
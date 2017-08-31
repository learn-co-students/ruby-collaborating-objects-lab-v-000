require 'pry'

class Song

  attr_accessor :name, :artist, :artist_name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    filename_parse_song = filename.split(" - ")[1]
    song = self.new(filename_parse_song)
    @artist_name = Artist.find_or_create_by_name(filename.split(" - ")[0])
    song.artist = @artist_name
    song.artist.songs << song
    song
  end

end

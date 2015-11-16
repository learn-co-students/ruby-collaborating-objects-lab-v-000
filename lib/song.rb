require 'pry'

class Song

  attr_accessor :name, :artist, :artist_name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    filesplit = filename.split(" - ")
    new_song = Song.new(filesplit[1])
    new_song.artist_name=(filesplit[0])
    new_song
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
    @artist = artist
  end

end
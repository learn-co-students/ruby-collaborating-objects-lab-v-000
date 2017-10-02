require 'pry'

class Song

  attr_accessor :name, :artist, :file, :artist_name, :files

  def initialize(name)
    @name = name
  end

  def artist_name=(artist_name)
    self.artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(self)
  end

  def self.new_by_filename(file)
    values = file.split(" - ")
    a_name = values[0]
    name = values[1]

    song = self.new(name)
    song.name = name
    song.artist_name = a_name
    song
  end
end

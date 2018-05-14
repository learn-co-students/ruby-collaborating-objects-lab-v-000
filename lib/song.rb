require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    data = filename.split(" - ")
    genre_parse = data[2].gsub(".mp3", "")

    song = self.new(data[1])
    song.artist_name = data[0]
    song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
end

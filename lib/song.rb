require 'pry'

class Song

  attr_accessor :title
  attr_reader :artist_name

  def initialize(title)
    @title = title
    @songs = []
  end

  def self.new_by_filename(filename)
    song_title = filename.split(" - ")[1]
    name = filename.split(" - ")[0]
    song = self.new(song_title)
    song.artist_name = name
    song
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    @artist_name = artist.name
    artist.add_song(self)
  end

end

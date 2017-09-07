require 'pry'

class Song

  attr_accessor :name
  attr_reader :artist_name, :artist

  def initialize(name)
    @name = name
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
    artist_obj = Artist.find_or_create_by_name(name)
    self.artist = artist_obj
    @artist_name = artist_obj.name
    artist_obj.add_song(self)
  end

  def artist=(artist_obj)
    @artist = artist_obj
  end

end

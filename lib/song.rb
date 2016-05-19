require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @songs = []
  end

  def name=(name)
    @name = name
  end

  def artist_name=(name)
    @artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)

  end

  def self.new_by_filename(file_name)
    data = file_name.split(' - ')
    new_song = Song.new(data[1])
    new_song.artist = Artist.find_or_create_by_name(data[0])
    new_song
  end

  def artist_name=(name)
    @artist = Artist.find_or_create_by_name(name)
  end
end

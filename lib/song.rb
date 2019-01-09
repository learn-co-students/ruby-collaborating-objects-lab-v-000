
require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(song_name)
    @name = song_name
  end

  def artist_name(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

  def self.new_by_filename(file_name)
    file_song = file_name.split(/\s-\s/)
    song  = self.new(file_song[1])
    file_artist = file_song[0]
    song.artist_name(file_artist)
    song
  end

  def save
    song
  end
end

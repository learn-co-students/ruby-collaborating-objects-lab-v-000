require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name(artist)
    if artist.class == Artist
      artist.add_song(self)
      self.artist = artist
    else
      artist_object = Artist.find_or_create_by_name(artist)
      artist_object.add_song(self)
      self.artist = artist_object
    end
  end

  def self.new_by_filename(file_name)
    info = file_name.split(" - ")
    new_song = Song.new(info[1])
    new_song.artist_name(info[0])
    new_song
  end
end
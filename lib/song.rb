require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    self.name = name
  end

  def artist_name=(artist)
    if (self.artist.nil?)
      self.artist = Artist.find_or_create_by_name(artist)
    else
      self.artist.name = artist
    end
  end

  def self.new_by_filename(filename)
    song_name = filename.split(" - ")[1]
    song_artist = filename.split(" - ")[0]
    song = Song.new(song_name)
    song.artist_name=(song_artist)
    song.artist.add_song(song_name)
    song
  end

end

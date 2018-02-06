require 'pry'
class Song
  attr_accessor :name, :artist
  # attr_reader :

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song_title = filename.split(" - ")[1]
    song_artist = filename.split(" - ")[0]
    song = Song.new(song_title)
    song.artist_name = song_artist
    #binding.pry
    song
  end

  def artist_name=(name)
    #binding.pry
      artist = Artist.find_or_create_by_name(name)
      self.artist = artist
      artist.add_song(self)
  end
end

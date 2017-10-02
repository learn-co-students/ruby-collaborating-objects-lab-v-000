require 'pry'
class Song
  attr_accessor :name, :artist, :artist_name

  def initialize(name)
    @name = name
  end

  def artist_name=(a_name)
    self.artist = Artist.find_or_create_by_name(a_name)
    artist.add_song(self)
  end

  def self.new_by_filename(filename)
    s_name, a_name = filename.split(" - ")[1], filename.split(" - ")[0]
    song = Song.new(s_name)
    song.artist_name = a_name
    song
  end

end

require 'pry'

class Song
  attr_accessor :name,:artist

  def initialize(name)
    self.name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end

  def self.new_by_filename(filename)

    array = filename.split("-")
    new_song = Song.new(array[1].strip)
    new_song.artist_name = array[0].strip
    new_song
  end

end

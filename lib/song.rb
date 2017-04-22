require 'pry'

class Song
  attr_accessor :name,:artist

  def initialize(name)
    self.name = name
  end

  def self.new_by_filename(filename)

    array = filename.split("-")
    new_song = Song.new(array[1].strip)
    new_song.artist = Artist.find_or_create_by_name(array[0].strip)
    new_song.artist.add_song(new_song)
    new_song
  end

end

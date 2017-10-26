require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    filename_array = filename.split(/\s-\s|\.mp3/)
    song = Song.new(filename_array[1])
    song.artist = Artist.find_or_create_by_name(filename_array[0])
    song.artist.add_song(song)
  end

end

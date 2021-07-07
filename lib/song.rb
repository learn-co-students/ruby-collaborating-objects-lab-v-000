require 'pry'

class Song
  attr_accessor :song_data, :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    @song_data = filename.split (" - ")
    song = Song.new(@song_data[1])
    song.artist = Artist.find_or_create_by_name(@song_data[0], song.name)
    return song
  end

end

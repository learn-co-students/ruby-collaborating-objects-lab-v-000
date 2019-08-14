require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    array = file.split(" - ")
    song_title = array[1].to_s
    song = self.new(song_title)
    song.artist = Artist.find_or_create_by_name(array[0].to_s)
    song.artist.add_song(song)
    song.artist.name
    song
  end
end

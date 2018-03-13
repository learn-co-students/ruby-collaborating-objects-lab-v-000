require 'pry'
class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    artist = file_name.split(" - ")[0]
    name = file_name.split(" - ")[1].split(".mp3")[0]
    song = Song.new(name)
    song.artist = Artist.find_or_create_by_name(artist)
    song.artist.add_song(name)
    song
  end

end

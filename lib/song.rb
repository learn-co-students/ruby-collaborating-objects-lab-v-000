require "pry"

class Song
  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    file = file_name.split(" - ")
    file[2].delete!(".mp3")

    new_song = Song.new(file[1])
    new_song.artist = Artist.find_or_create_by_name(file[0])
    new_song.genre = file[2]
    new_song.artist.songs << new_song
    new_song
  end
end

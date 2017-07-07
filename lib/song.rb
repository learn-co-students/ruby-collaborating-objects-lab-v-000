require 'pry'
class Song
  def initialize(name)
    @name = name
  end

  attr_accessor :name, :artist

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end

  def self.new_by_filename(file_name)
    #artist - song - genre.mp3
    song = self.new(file_name.split(" - ")[1])
    song.artist_name = file_name.split(" - ")[0]
    song.artist.add_song(song)
    song

  end
end

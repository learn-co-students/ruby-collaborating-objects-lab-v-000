require 'pry'
class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name=name
  end

  def self.new_by_filename(file_name)
    elements = file_name.split(" - ")
    artist = elements[0]
    song = elements[1]
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
end

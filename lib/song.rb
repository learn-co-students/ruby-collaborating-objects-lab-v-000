require 'pry'
class Song
  @@all = []
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
    @artist = artist
    @@all << self
  end
  def self.new_by_filename(file)
    array = file.split(" - ")
    artist = Artist.find_or_create_by_name(array[0])
    song = Song.new(array[1])
    song.artist = artist
    song.artist.add_song(song)
    return song
  end
end

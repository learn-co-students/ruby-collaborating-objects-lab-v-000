require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name)
  @name = name
  end

  def self.new_by_filename(filename)
    file_split = filename.split(" - ")
    song = self.new(file_split[1])
    artist = Artist.find_or_create_by_name(file_split[0])
    song.artist = artist
    artist.add_song(song)
    #binding.pry
    song
  end
end

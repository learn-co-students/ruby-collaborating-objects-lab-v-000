require 'pry'
class Song
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
  end
  def self.new_by_filename(file_name)
    splitted_filename=file_name.split(" - ")
    artist = splitted_filename[0]
    name = splitted_filename[1]
    song = self.new(name)
    song.artist = Artist.find_or_create_by_name(artist)
    artist.add_s
    song
  end
end

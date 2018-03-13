require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    new_song = Song.new(file.split(" - ")[1])
    new_song.artist = Artist.find_or_create_by_name(file.split(" - ")[0])
    new_song.artist.add_song(self)
    new_song
    #binding.pry
  end

end

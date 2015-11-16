require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    self.artist = artist 
  end

  def self.new_by_filename(filename)
    title = filename.split(" - ")
    new_song = Song.new(title[1])
    new_song.artist_name = title[0]
    new_song
  end
end

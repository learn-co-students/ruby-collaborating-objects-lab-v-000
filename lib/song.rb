require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist
    @artist
  end

  def self.new_by_filename(filename)
    filename_array = filename.split(" - ")
    new_instance = self.new(filename_array[1])
    new_instance.artist_name(filename_array[0])
    new_instance
  end

  def artist_name(artist)
    self.artist = Artist.find_or_create_by_name(artist)
    self.artist.add_song(self)
  end

end

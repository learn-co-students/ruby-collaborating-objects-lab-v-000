require 'pry'
class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.song_from_filename(filename)
    name = filename.split(" - ")[1]
    name
  end

  def self.artist_from_filename(filename)
    artist = filename.split(" - ")[0]
    artist
  end

  #.new_by_filename creates a new song instance from the passed-in file
  def self.new_by_filename(filename)
    binding.pry
    song_name = filename.split(" - ")[1]
    song_name
    song = self.new(name)
  end

  def artist_name=(name)
    self.artist.name = Artist.find_or_create_by_name(name)
  end

end

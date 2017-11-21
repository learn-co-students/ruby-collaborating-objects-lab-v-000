require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def name=(name)
    @name = name
  end

  def artist=(artist)
    #@artist = artist
    Artist.new = artist
    @artist = Artist.find_or_create_by_name(artist.name)

  end

  def new_by_filename(file_name)
    #new_song = song.new()
    #tbc
  end
end

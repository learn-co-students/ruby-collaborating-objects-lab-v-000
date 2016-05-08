require 'pry'
class Song

  attr_accessor :name, :artist, :artist_name

  def initialize(name)
    @name = name
  end

  def artist_name(name)
    @artist = Artist.find_or_create_by_name(name)

  end

  def self.new_by_filename(filename)
    name = filename.split(" - ")[1]
    art_name = filename.split(" - ")[0]
    song = self.new(name)
    song.artist_name(art_name)
    song
  end


end
require 'pry'

class Song

  attr_accessor :artist, :name

  def initialize(name)
    @name = name
    @artist = artist
  end

  def self.new_by_filename(name)
    song = self.new
    song.name = name 
  end

  # def artist=(artist)
  #   artist = artist.new
  #   song.artist = song 
  # end


end
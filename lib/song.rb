require 'pry'

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(artist_name)
    #binding.pry
    @artist = Artist.find_or_create_by_name(artist_name)
    #binding.pry
    @artist.add_song(self)
    #if (self.artist.nil?)
    #  self.artist = Artist.new(artist_name)
    #else
    #  self.artist.name = artist_name
    #end
  end

  def self.new_by_filename(file_name)
    parse = file_name.split(" - ")
    song = Song.new(parse[1])
    song.artist_name=(parse[0])
    song
  end

end

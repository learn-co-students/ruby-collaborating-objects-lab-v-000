require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  def initialize(name)
    @name = name
  end

  def artist=(artist_object)
    @artist = artist_object
#    Artst.add_song(self)
  end

  def self.new_by_filename(filename)
    song_name = filename.split(" - ")[1]
    artist_name = filename.split(" - ")[0]
    new_instance = self.new(song_name)
    artist_object = Artist.find_or_create_by_name(artist_name)
    new_instance.artist=(artist_object)
    new_instance
  end


end

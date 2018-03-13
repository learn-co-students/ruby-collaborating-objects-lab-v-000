require 'pry'

class Song
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    array = filename.split(" - ")
    song = self.new(array[1])
    song.artist = Artist.find_or_create_by_name(array[0]) # array[0] == "Michael Jackson
    song # hello = Song.new_by_filename("adele - hello - pop.mp3")
  end

  def artist
    @artist
  end

  def artist=(artist)
    @artist = artist
    @artist.add_song(self)
  end


end

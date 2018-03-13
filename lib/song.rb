require 'pry'

class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(song)
    artist, name, genre = song.split(' - ')
    #split song into respective parts.  format is artist, song, genre.  shave off .mp3.
  end


end

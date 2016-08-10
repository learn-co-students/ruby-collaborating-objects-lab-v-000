require 'pry'

class Song

  attr_accessor :artist , :song ,:name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    #binding.pry
      fi = file_name.split(" - ")

      song = fi[1]
      artist = fi[0]
    #binding.pry
      song = self.new(song)
      song.artist = Artist.find_or_create_by_name(artist)
      song.artist.songs << song
      #binding.pry
      song


  end

  def artist_name=(name)
    artist = Artist.find_or_create_by_name(artist)

  end



end

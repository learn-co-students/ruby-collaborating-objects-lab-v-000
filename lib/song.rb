require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
  end

  def artist_name
    if self.artist != nil
      self.artist.name
    else
      nil
    end
  end

  def self.new_by_filename(filename)
    songarray = filename.split(" - ")
    newartist = Artist.find_or_create_by_name(songarray[0])
    newsong = Song.new(songarray[1])
    newsong.artist = newartist
    newartist.add_song(newsong)
    newsong
    #binding.pry
  end

end

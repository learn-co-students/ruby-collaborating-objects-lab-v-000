require 'pry'
class Song
  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end


  def self.new_by_filename(filename)

    full_title = filename.split(" - ")
    song = self.new(full_title[1])
    song.artist_name = full_title[0]
    # song.genre = full_title[2].chomp(".mp3")
    #binding.pry

    song

  end
end

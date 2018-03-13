require 'pry'

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.new_by_filename(filename)
    song_name = filename.split(" - ")[1]
    song = self.new(song_name)
    artist_name = filename.split(" - ")[0]
    #artist = Artist.new(artist_name)
    artist = Artist.find_or_create_by_name(artist_name)
    #binding.pry
    artist.save
    artist.add_song(song)
    song
  end

end


class Song
  require 'pry'
  attr_accessor :name, :artist

  def initialize(name="")
    @name = name
  end

  def self.new_by_filename(filename)
    song_name = filename.split(" - ")
    song = self.new(song_name[1])
    song.artist = Artist.find_or_create_by_name(song_name[0])
    #binding.pry
    song.artist.add_song(song)
    song
  end




end

require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end 

  def self.new_by_filename(file)
    song = file.split(" - ")[1] #Black and White
    artist = file.split(" - ")[0] #Michael Jackson
    
    new_song = Song.new(song) ##<Song:0x007ffc8a297988 @name="Black or White">
    new_song.artist = Artist.find_or_create_by_name(artist)

    return new_song
  end
end
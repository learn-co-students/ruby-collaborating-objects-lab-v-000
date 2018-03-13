require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    name = file_name.split(" - ")[1] #"Black or White"
    song = Song.new(name)
    artist_name = file_name.split(" - ")[0] #"Michael Jackson"
    song.artist= Artist.find_or_create_by_name(artist_name)
    song.artist.add_song(name)
    song.artist.save
    song
  end

end

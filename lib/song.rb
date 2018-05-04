require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(artist_name)
   self.artist = Artist.find_or_create_by_name(artist_name)
  end

  def self.new_by_filename(file)
    file = file.split("-")
    song = Song.new(file[1].strip)
    song.artist_name=(file[0].strip)
    song.artist.add_song(song)
    song
  end




end

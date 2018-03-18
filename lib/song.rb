require 'pry'

class Song
  attr_accessor :name, :artist, :mp3_importer

  def initialize(name)
    @name = name
  end

  def artist_name=(artist_name)
    self.artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(self)
  end


  def self.new_by_filename(file_name)

    file_array = file_name.chomp(".mp3").split(" - ")
    song = self.new(file_array[1])
    song.artist_name = file_array[0]
    song
  end

end

require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    file_arr = file.split(" - ")
    song = Song.new(file_arr[1])
    song.artist_name = file_arr[0]
    song
  end

  def artist_name=(name)
     self.artist = Artist.find_or_create_by_name(name)
     self.artist.add_song(self)
  end

end
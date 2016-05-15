require 'pry'

class Song

  @@all = []

  attr_accessor :name, :filename, :artist

  def initialize(name)
    @name = name
  end

  def Song.all
    @@all 
  end

  def artist=(artist)
    @artist = artist
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
    self.artist = artist
  end


  def Song.new_by_filename(filename)
    file_array = []<< filename[0].split(" - ")
    song = Song.new(file_array[1])
    song.artist_name=(file_array[0])
    song
  end

end


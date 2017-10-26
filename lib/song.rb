require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end

  def self.new_by_filename(filename)
    filename_array = filename.split(/\s-\s|\.mp3/)
    @name = filename_array[1]
    @artist = filename_array[0]
    new_song = self.new(@name)
    new_song.artist_name = @artist
    new_song
  end

end

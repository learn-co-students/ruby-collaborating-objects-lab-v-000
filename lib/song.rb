require 'pry'
class Song
#The Song class will be responsible for creating songs given each filename and
#sending the artist's name (a string) to the Artist class
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end




  def self.new_by_filename(file_name)
    artist, song = file_name.split(" - ")
    s = Song.new(song)
    s.artist_name = artist
    s
  end

end

require 'pry'
class Song
  attr_accessor :name, :artist, :song

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
    
  end

  def self.new_by_filename(file)
    filename = file.split(' - ')
    song = filename[1]
    artist_name = filename[0]
    new_song = self.new(song)
    new_song.artist_name=(artist_name)
    
  end

end

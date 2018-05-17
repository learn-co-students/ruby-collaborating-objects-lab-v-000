require 'pry'
class Song
  attr_accessor :name, :artist
  attr_reader :artist_name
  
  def initialize(name)
    @name = name
  end
  
  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    artist.name = name
    self.artist = artist
    self.artist.add_song(self)
  end
  
  def self.new_by_filename(some_filename)
    @songs = some_filename.split(" - ")
    song = self.new(@songs[1])
    song.artist_name = @songs[0]
    song
  end
end
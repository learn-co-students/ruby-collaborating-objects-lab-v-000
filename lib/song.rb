require 'pry'
class Song
  attr_accessor :name, :artist
  @@songs = []

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    temp = filename.split(" - ")
    song = self.new(temp[1])
    song.artist_name = temp[0]
    song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end


end

require 'pry'
class Song

  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end


  def self.new_by_filename(filename)
    song_attributes = filename.split(' - ')
    song = self.new(song_attributes[1])
    artist = song_attributes[0]
    song.artist_name = artist
    song


  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
    # binding.pry

  end
end

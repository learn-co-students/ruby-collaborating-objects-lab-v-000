require 'pry'
class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end

  def self.new_by_filename(filename)
    song_data = filename.split(" - ")
    song = self.new(song_data[1])
    song.artist_name = song_data[0]
    song
  end
end

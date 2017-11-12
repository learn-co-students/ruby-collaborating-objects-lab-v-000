require 'pry'

class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def artist_name=(artist_name)
    if self.artist.nil?
      self.artist = Artist.new(artist_name)
    else
      self.artist.name = artist_name
    end
  end

  def self.new_by_filename(file_name)
    name = file_name.split(" - ")[1]
    artist_name = file_name.split(" - ")[0]
    new_song_instance = Song.new(name)
    new_song_instance.artist_name=(artist_name)
    new_song_instance
  end

end

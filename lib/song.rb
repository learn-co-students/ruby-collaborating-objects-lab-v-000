require 'pry'
class Song
  attr_accessor :name, :artist, :artist_name

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
    song_name = filename.split(" - ")[1]
    a_name = filename.split(" - ")[0]
    song = self.new(song_name)
    song.artist = Artist.find_or_create_by_name(a_name)
    song.artist_name = a_name
    song.artist.add_song(song_name)

    song
  end

end

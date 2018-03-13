require 'pry'
class Song

  attr_accessor :name, :artist

  def initialize(song_title)
    @name = song_title
  end

  def artist_name=(name)
    @artist = Artist.find_or_create_by_name(name)
  end

  def self.new_by_filename(filename)
    parts = filename.split(' - ')
    song = self.new(parts[1])
    song.artist_name=(parts[0])
    song

  end

end
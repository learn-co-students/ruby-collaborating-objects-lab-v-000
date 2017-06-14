require "pry"
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song_array = filename.split(" - ")
    song = song_array[1]
    artist = song_array[0]
    new_song = Song.new(song)
    new_song.artist_name = artist
    new_song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    Artist.all << self.artist
  end

end

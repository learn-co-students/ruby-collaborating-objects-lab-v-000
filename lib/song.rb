require 'pry'

class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@all
  end

  def self.new_by_filename(file)
    parsed_file = file.split(" - ")
    new_song_artist = parsed_file[0]
    new_song_name = parsed_file[1]
    new_song = Song.new(new_song_name)
    new_song.artist_name=(new_song_artist)
    new_song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end

end

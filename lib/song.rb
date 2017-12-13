require 'pry'

class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
  end

  def self.artist(name)
    self.artist = name
  end

  def self.new_by_filename(file_name)
    array = file_name.partition(" - ")
    artist_name = array[0]
    song_name = array[2].partition(" - ")[0]

    song = Song.new(song_name)
    song.artist_name = artist_name
    song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

  def save
    @@all << self
    self
  end

end

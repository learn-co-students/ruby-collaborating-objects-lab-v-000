require 'pry'

class Song
  attr_accessor :artist, :name, :title

  @@all = []

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end

  def save
    @@all << self
    self
  end

  def self.new_by_filename(filename)
    # binding.pry
    song_name = filename.split(" - ")[1]
    song_artist = filename.split(" - ")[0]

    song = Song.new(song_name)
    song.artist_name=(song_artist)
    song.save
  end


end

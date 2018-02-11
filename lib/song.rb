require 'pry'
class Song
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    artistName = file_name.split(" - ")[0]
    songName = file_name.split(" - ")[1]
    song = self.new(songName)
    song.artist_name=(artistName)
    song.artist=(Artist.find(artistName))
    song.artist.add_song(songName)
    song
  end

  #takes in a string and gets the artist object
  def artist_name=(artistName)
    Artist.find_or_create_by_name(artistName)
    Artist.find(artistName)
  end

  #artist getter
  def artist
    @artist
  end

  #artist setter
  def artist=(artist)
    @artist = artist
    @@all << @artist
  end

  def self.all
    @@all
  end

  def save
    @@all << self
    self
  end
end

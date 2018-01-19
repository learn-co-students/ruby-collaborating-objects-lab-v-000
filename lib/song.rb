require 'pry'

class Song
  attr_accessor :name, :artist, :artist_name#, :genre
  @@all = []

  def artist_name=(artist_name)
    artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(self)
  end

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.new_by_filename(filename)
    names = filename.split(" - ")
    song_artist = names[0]
    song_name = names[1]
    #song_genre = names[2].chomp(".mp3")
    song = Song.new(song_name)
    song.artist_name = song_artist
    #song.genre = song_genre
    song.save
    song
  end

end

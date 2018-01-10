require "pry"

class Song

  attr_accessor :artist, :name

  @@all_songs = []

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    artist_name=(filename.split(" - ")[0])
    song_name=(filename.split(" - ")[1])
    song = self.create(song_name, artist_name)
    song
  end

  def self.create(song_name, artist_name)
    new_song = self.new(song_name)
    artist_instance = Artist.find_or_create_by_name(artist_name)
    new_song.artist = artist_instance
    new_song.name = song_name
    @@all_songs << new_song
    artist_instance.songs << new_song
    new_song
  end

end

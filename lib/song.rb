require 'pry'
class Song

  attr_accessor :name
  attr_reader :artist

  @@all = []

  def initialize (name)
    @name = name
    @artist = nil
  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self) unless artist.songs.include?(self)
  end

  def self.new_by_filename (file_name)
    artist_name, song_name, genre_name = file_name.chomp(".mp3").split(" - ")
    song = self.new(song_name)
    song.artist = Artist.find_or_create_by_name(artist_name)
    song.save
  end

  def save
    @@all << self
    self
  end

  def self.all
    @@all
  end

end

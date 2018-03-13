require 'pry'

class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name = nil)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist = self
  end

  def self.create_by_name(artist_name)
    artist = Artist.new(artist_name)
    artist
  end

  def self.find_or_create_by_name(artist_name)
    artist_found = @@all.find{|artist| artist.name == artist_name}
    if artist_found == nil
      artist = Artist.new(artist_name)
      artist.save
    end
    artist_found || artist
  end

  def print_songs
    @songs.each{|song| puts song.name}
  end
  
end
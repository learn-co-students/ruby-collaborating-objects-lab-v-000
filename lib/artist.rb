require 'pry'

class Artist
  @@all  = []
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def songs
    @songs
  end

  def add_song(song)
    self.songs << song
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(artist_name)
    found_artist = self.all.find { |artist| artist.name == artist_name}
    if found_artist
      found_artist
    else
      artist = Artist.new(artist_name)
      artist.save
      artist
    end
  end

  def print_songs
    self.songs.each { |song| puts song.name }
  end

end

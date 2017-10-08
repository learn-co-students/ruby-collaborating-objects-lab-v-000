require "pry"
class Artist

  attr_accessor :name, :songs, :artist

  def self.all
    @@all
  end

  @@song_count = 0
  @@all = []

  def initialize(name)
    @songs = []
    @name = name
    @artist = artist
    @@all << self
  end

  def add_song(song)
    song.artist = self
      @songs << song
      @@song_count += 1
      @songs
  end

  def save
    @@all << @artist
  end

  def self.find_or_create_by_name(name)
    @@all.detect {|artist| artist.name == name || Artist.new(name) }
  end

  def print_songs
    @songs.map {|song| puts song.name}
  end

end

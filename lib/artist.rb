require 'pry'

class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    artist_array = []
    self.all.each {|artist|
      if artist.name == name
        artist_array << name
        return artist
      end
    }

    artist = self.new(name) if artist_array = []
  end

  def print_songs
    self.songs.each {|song| puts song.name}
  end
end
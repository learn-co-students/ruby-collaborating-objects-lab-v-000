require 'pry'

class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.find_or_create_by_name(artist_name)
    self.all.detect {|song_obj| song_obj.name == artist_name} || Artist.new(artist_name)
  end

  def print_songs
    songs.each {|song| puts song.name}
  end
end

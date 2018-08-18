require 'pry'
class Artist
  attr_accessor :name, :song, :artist
  attr_reader :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name(name)
    self.new(name) unless @@all.detect {|artist| artist.name == name}

  end

  def print_songs
    @songs.collect {|song| puts song.name}
  end
end

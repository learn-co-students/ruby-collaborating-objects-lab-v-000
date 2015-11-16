require 'pry'

class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def add_song(new_song)
    songs << new_song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist)
    self.all.each { |artists| return artist if artists.name == artist }
    Artist.new(artist)
  end

  def print_songs
    songs.each { |song| puts song }
  end
end

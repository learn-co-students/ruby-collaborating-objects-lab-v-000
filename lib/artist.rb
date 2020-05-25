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

  def self.find_or_create_by_name(artist_name)
    self.all.select { |artist| return artist if artist.name == artist_name }
    Artist.new(artist_name)
  end

  def print_songs
    songs.each { |song| puts song }
  end
end

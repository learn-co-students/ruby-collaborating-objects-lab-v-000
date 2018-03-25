require_relative 'song.rb'

class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def add_song(song)
    songs << song
  end

  def print_songs
    songs.each { |song| puts song.name }
  end

  def self.find_or_create_by_name(artist_name)
    existing_artist = @@all.find { |artist| artist.name == artist_name }
    if existing_artist
      existing_artist
    else
      self.new(artist_name)
    end
  end
end

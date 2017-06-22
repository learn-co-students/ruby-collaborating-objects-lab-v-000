require "pry"
class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self
    @songs << song
    if !@@all.include?(self)
      self.save
    end
  end

  def self.find_or_create_by_name(artist_name)
    @@all.each do |artist|
      return artist if artist.name == artist_name
    end
    self.new(artist_name)
  end

  def print_songs
    @songs.each { |song| puts song.name }
  end
end

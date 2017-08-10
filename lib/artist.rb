require "pry"
class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.create_by_name(artist_name)
    artist = self.new(artist_name)
    artist.save
    artist
  end

  def self.find_by_name(artist_name)
    self.all.detect {|item| item.name == artist_name}
  end

  def self.find_or_create_by_name(artist_name)
    self.find_by_name(artist_name) || self.create_by_name(artist_name)
  end

  def print_songs
    self.songs.each { |title| puts "#{title.name}" }
  end
end

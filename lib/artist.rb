require 'pry'
class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
  end

  def add_song(song)
    self.songs ||= []
    self.songs << song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(artist_name)
    self.find(artist_name) ? self.find(artist_name) : self.create(artist_name)
  end

  def self.find(artist_name)
    self.all.find { |artist| artist.name == artist_name }
  end

  def self.create(artist_name)
    Artist.new(artist_name).tap { |artist| artist.save }
  end

  def print_songs
    self.songs.each { |songs| puts songs.name }
  end

end
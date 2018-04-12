require "pry"

class Artist

  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(artist_name)
    found_artist = @@all.find { |n| n.name == artist_name }
    found_artist || Artist.new(artist_name).tap { |it| it.save }
  end

  def print_songs
    songs.each { |x| puts x.name }
  end

end

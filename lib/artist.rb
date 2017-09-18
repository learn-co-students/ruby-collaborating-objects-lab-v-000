require 'pry'
class Artist
  attr_accessor :name, :song

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @song = song
    @songs << @song
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

  def print_songs
    songs.each {|song| puts song.name}
  end

  def self.find(name)
    @@all.detect { |artist| artist.name == name }
  end

  def self.create(name)
      artist = Artist.new(name)
      artist.save
      artist
  end

  def self.find_or_create_by_name(artist_name)
    if self.find(artist_name)
      self.find(artist_name)
    else
      self.create(artist_name)
    end
  end

end

require 'pry'

class Artist
  attr_accessor :name

  @@all = Array.new

  def initialize(name)
    @name = name
    @songs = Array.new
  end

  def self.create_by_name(name)
    artist = Artist.new(name)
    artist.save
    artist
  end

  def add_song(song)
    self.songs << song
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.find_by_name(name)
    self.all.find { |artist| artist.name == name }
  end

  def self.find_or_create_by_name(name)
    if found_artist = find_by_name(name)
      found_artist
    else
      create_by_name(name)
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end

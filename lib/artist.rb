require 'pry'

class Artist

  attr_accessor :name, :song

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(title)
    song = Song.new(title)
    @songs << title
    song.artist = self
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

  def self.find_or_create_by_name(name)
    if @@all.detect {|artist| artist.name == name} == nil
      Artist.new(name)
    else
      @@all.detect {|artist| artist.name == name}
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

  end

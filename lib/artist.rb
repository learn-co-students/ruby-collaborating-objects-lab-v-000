require 'pry'

class Artist
  attr_accessor :name

  @@all = []

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

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    if @@all.none? {|artist| artist.name == name}
      new_artist = self.new(name)
      new_artist.save
      new_artist
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

require 'pry'
class Artist
  attr_accessor :name, :songs
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
  #  binding.pry
  end

  def self.find(name)
    self.all.find {|artist| artist.name == name}
  end

  def self.create(name)
    add_artist = Artist.new(name)
    add_artist.save
    add_artist
  end

  def self.find_or_create_by_name(name)
    if self.find(name)
      self.find(name)
    else
      self.create(name)
    end
  end

  def print_songs
    @songs.each do|song|
    puts song.name
  end
  end
end

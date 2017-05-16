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

  def save
    #self.class.all << self
    @@all.push self
    @@all.last
  end

  def add_song(song)
    #@songs << song
    @songs.push song
  end

  def songs
    @songs
  end

  def self.create_by_name(name)
    artist = self.new(name)
    artist.name = name
    artist.save
    @@all << artist
    artist
  end

  def self.find_by_name(name)
    self.all.detect{|artist| artist.name == name}
  end

  def self.find_or_create_by_name(name)
    if self.find_by_name(name) == nil
      self.create(name)
    else
      self.find_by_name(name)
    end
  end

  def self.create(name)
    Artist.new(name).save
  end

  def print_songs
    songs.each do |song|
      puts song.name
    end
  end

end

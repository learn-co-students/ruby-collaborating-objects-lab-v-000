require 'pry'
class Artist

  attr_accessor :name

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

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
  end

  def self.find(name)
    self.all.find {|x| x.name == name}
  end

  def self.create(name)
   artist = self.new(name)
   artist.save
   artist
  end

  def print_songs
    songs.each {|song| puts song.name}
  end

end
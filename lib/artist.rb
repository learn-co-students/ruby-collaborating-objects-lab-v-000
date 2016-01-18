require 'pry'
class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@songs = []
  end

  def add_song(song)
    @@songs << song
    song.artist = self
  end

  def songs
    @@songs
  end

  def self.all
    @@all
  end

  def save
    @@all << self
    self
  end

  def self.find_by_name(name)
    self.all.detect{|artist| artist.name == name}
  end

  def self.return_artist(name)
    self.all.detect{|artist| artist.name == name ? artist : nil }
  end

  def self.create_by_name(name)
     self.new(name).save
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) ? self.return_artist(name) : self.create_by_name(name)
  end

  def print_songs
    @@songs.collect {|x| puts x.name}
  end
end
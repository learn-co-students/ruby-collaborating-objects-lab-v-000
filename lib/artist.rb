require "pry"
class Artist
@@all = []
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
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
    @@all.find {|a| a.name == name}
  end

  def self.create(name)
    new_art = self.new(name)
    new_art.save
    new_art
  end

  def add_song(song)
    @songs << song
  end

  def print_songs
    songs.each {|s| puts s.name}
  end


end

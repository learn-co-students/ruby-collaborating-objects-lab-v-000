require 'pry'

class Artist
  attr_accessor :name

  @@all = []
  def initialize(name)
    @name = name
    @songs = []
  end

  def self.create(name)
    aname = Artist.new(name)
    @@all << aname
    aname
  end

  def add_song(new_song)
    @songs << new_song
  end

  def songs
    @songs
  end

  def save
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist)
    self.all.detect{|a| a.name == artist} || Artist.create(artist)
  end

  def print_songs
     songs.each {|i| puts i.name}
  end
end

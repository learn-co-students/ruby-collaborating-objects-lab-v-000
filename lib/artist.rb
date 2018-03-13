require 'pry'
class Artist
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.class.all << self 
  end

  attr_accessor :name, :songs

  def save
    self.class.all << self
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    @@all.detect{|ele| ele.name == name} || self.new(name)
  end

  def print_songs
    @songs.each {|ele|
      puts ele.name
    }
  end
end

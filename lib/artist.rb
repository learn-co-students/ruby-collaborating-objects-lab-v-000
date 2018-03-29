require 'pry'
class Artist
  attr_accessor :name, :song
  @@all =[]

  def initialize(name)
    @name = name
    @songs = []
  end #def initialize

  def songs
    @songs
  end #def songs

  def add_song(song)
    @songs << song
  end #def songs

  def save
    @@all << self
  end #def save

  def self.all
    @@all
  end #def all

  def self.find_or_create_by_name(name)
    if self.all.find {|artist| artist.name == name}
    else
      self.new(name)
    end #if self.all.find
  end #def self.find_or_create_by_name

  def print_songs
    @songs.each {|song| puts song.name}
  end #def print_songs

end #class Artist

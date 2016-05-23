require 'pry'

class Artist
  attr_accessor :name, :song 
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def save
    @@all << self unless @@all.include?(self)
  end

  def self.find_or_create_by_name(name)
    if self.all.detect{|artist| artist.name == name}
    else
      self.new(name)
    end
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

end
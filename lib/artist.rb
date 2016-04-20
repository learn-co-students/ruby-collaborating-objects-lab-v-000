require 'pry'

class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def add_song(title)
    @songs << title
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
    if @@all.detect { |artist| artist.name == name }
      @@all.detect { |artist| artist.name == name }
    else
      self.new(name) 
    end
  end

  def print_songs
    @songs.each {|song| puts song.name}
    
  end
end
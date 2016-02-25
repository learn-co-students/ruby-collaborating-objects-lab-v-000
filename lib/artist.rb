
require 'pry'

class Artist
  attr_accessor :name, :songs, :all
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(name)
   @songs << name
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end
  
  def self.find_name(name)
    if @@all.include?(name)
      return name
      else
    end
  end

  def self.create_by_name(name)
    name = Artist.new(name)
    name
  end  

  def self.find_or_create_by_name(name)
      self.find_name(name) || create_by_name(name)
  end

  def print_songs
    @songs.each do |song| 
    puts song.name
    end
  end

end
require 'pry'

class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
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

  def self.find_by_name(name)
    @@all.detect {|artist| artist.name == name}
  end

  def self.create_by_name(name)
    #create means to create a new saved instance
    artist = self.new(name)
    artist.save
    artist
  end

  def self.find_or_create_by_name(name)                 # why does this need to be a class method?
    if find_by_name(name)
      find_by_name(name)
    else
      create_by_name(name)
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.name                  
    end
  end

end

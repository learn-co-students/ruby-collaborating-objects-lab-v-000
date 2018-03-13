require 'pry'

class Artist
  attr_accessor :name, :songs
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    #binding.pry
  end

  def save
    @@all << self # add artist instance to @@all array
  end

  def self.songs
    @songs
  end

  def self.find_or_create_by_name(name) # this method is called from Song class
    self.find_name(name) || self.create_name(name)
  end

  def self.find_name(name)
    self.all.find do |artist| # searches for artist name in @@all array
      artist.name == name
    end
  end

  # #.tap method yields self to the block, and then returns self. The primary purpose of this method is to “tap into”
  # a method chain, in order to perform operations on intermediate results within the chain.

  def self.create_name(name)  # name passed from MP3Importer class through Song class
    self.new(name).tap do |artist|  # creates new artist instance "self.new(name)" from name argument and adds to @@all array
      # if artist exist, no need to create a new artist instance
      artist.save
      #binding.pry
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end

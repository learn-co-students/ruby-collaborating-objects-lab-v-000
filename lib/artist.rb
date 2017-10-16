require 'pry'
class Artist

  attr_accessor :name

  @@all = [] # class array to keep track of all instances of artist class

  def initialize(name)
    @name = name
    @songs = [] #array to keep track of all artists song objects
    #self.save #add new instance to @@all array
    end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs # return array of all artists songs
  end

  def save
    @@all << self
  end

  def self.all
      @@all
  end

  def self.find_or_create_by_name(name)
    artist = self.all.detect{|artist| artist.name == name}
    if !artist #if not artist
      artist = Artist.new(name)# create a new instance of artist
      artist.save #save the new instance to the @@all array
    end
    artist
  end

  def print_songs
    songs.each do |song| #cycle through songs array
        puts song.name #print the title of each song object
    end
  end


end

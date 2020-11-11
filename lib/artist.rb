#The Artist class will be responsible for either creating the artist (if the artist doesn't exist in our program yet) or finding the instance of that artist (if the artist does exist).
require 'pry'

class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def self.create_by_name(name)     #see Advanced Class Methods labs
      artist = self.new(name)       #takes name, creates new name by Artist.new(name)
      artist.name = name            #assigns artist name to name input
      artist                        #returns artist
  end

  def self.find_by_name(name)
    self.all.detect {|artist| artist.name == name}  #Searches @@all for artist that matches incoming name
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name) #Finds or creates by incoming name
  end

  def songs
    @songs
  end

  def add_song(song)
     @songs << song
  end

  def print_songs
    self.songs.each {|song| puts song.name} #.name method to pull out just name not whole instance. Test was only looking for 2 names, not full list.
  end

  def save
    @@all << self            #artist saves own individual artist instance to all Artist array
  end

  def self.all
    @@all                    #Artist.all returns array of artists
  end


end

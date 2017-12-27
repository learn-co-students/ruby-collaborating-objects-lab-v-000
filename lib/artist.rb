require 'pry'

class Artist

  attr_accessor :name, :songs
  #sets the artist name

  @@all = []

  def initialize(name)
    #accepts a name for the Artist
    @name = name
    @songs = []
    #I want to add the new instance to the class method if the artist already exists, don't add it.
    @@all << self
  end

  def add_song(song)
    #adds a songs to the artist's list of songs
    @songs << song
  end

  def songs
    #keep track of an artist's songs
    #returns the array of saved songs
    #I need this method to communicate with the song class method find_by_artist
    #I need to finish that method in the song class
    # binding.pry
    # Song.find_by_artist(self) #I made this to pull the list of songs from the songs class
    @songs
  end

  def save
    #adds the artist instance to the @@all class variable
    @@all << self
  end

  def self.all
    #returns the @@all class variable
    @@all
  end

  def self.find_or_create_by_name(name)
    #finds or creates an artist by name maintaining uniqueness of objects by name property
    #This class method should take the name that is passed in (remember, it will be a string), and
    #do one of two things. Find the artist instance that has that name or create one if it doesn't exist.
    #Either way, the return value of the method will be an instance of an artist with the name attribute filled out.
    #We get detect to return true or flase if name argument == the name in the instance.
    #If it does, we return the instnace, if it doesn't, we create a new instance.
    # Remember detect automatically returns the first instance that it finds as true. 
    self.all.detect { |artist| artist.name == name } || Artist.new(name)
  end

  def print_songs
    #list all of the artist's songs
    songs.each { |song| puts song.name }

  end

end

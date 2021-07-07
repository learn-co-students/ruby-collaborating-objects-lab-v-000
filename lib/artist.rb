require 'pry'
class Artist #class is the blueprint from which objects are created
  @@all = [] #class variable. Tracking class level data with an instance variable on the class itself

  attr_accessor :name #this is a Ruby method and automatically sets up getters and setters for those instance variables
  attr_reader :songs

  def initialize(name)#when #new is called on the class, a new object is instantiated, init method is internally called on the new object and all the arguments are passed to it.
    @name = name # this is the #name= method assigning the local var name to the instance variable name.
    @songs = [] #instance variable stores attributes of an instance of a class that are set to an array that returns artist songs. An artist has many songs.
  end

  def self.all #this is a getter method for @@all. when you call a method self is the receiver of the method call
    @@all #returns all artists in the array
  end

  def add_song(song) #adds songs to the artist collection. Artist responsibility.
    @songs << song unless @songs.include?(song) #adds song objects to the @songs array. Checks if song already exists to avoid duplication.
    song.artist = self unless song.artist == self #we use the self keyword to refer to the artist on which we are calling this method. We call the #artist= method on the song that is being passed in as an argument and set it equal to self––the artist
  end #?we are telling the song about the artist and keeps us out of a loop.

  def songs #exposes the collection. keeps track of the artist's songs
    @songs #returns the @songs array, which contains the list of songs that the artist has many of
  end

  def save #Saving an instance of the artest.Adds the artist instance to the @@all class variable
    @@all << self #Adds the artist instance to the @@all class variable
    self
  end

  def self.find_or_create_by_name(name) #passes in the artist name a sring parsed from the db file
    self.find_by_name(name) || self.create_by_name(name) #Find the artist instance that has that name or create one if it doesn't exist
  end #returns an instance of an artist with the name attribute

  #binding.pry
#puts "goodbye"
end






























#class Artist #artist has many songs
#  @@all = []

#attr_accessor :name
#attr_reader :songs

#  def initialize(name)
#    @name = name
#    @songs = []
#  end

#def self.all #when you call a method self is the receiver of the method call
#  @@all #we write it this way by convention as it is easier to extend the code beyond the module
#end #returns all artists in the array

#  def add_song(song)
#   @songs << song unless @songs.include?(song)#no duplicates in array
#   song.artist = self unless song.artist == self #here we need to tell the song about the artist, keeps us out of loop
 #end #only gets called 2 times
            #instance methods signifies the receiver of an instance
  #def save #save an artist, and instance method is used, we are saving an instance of artist
  #  @@all.push(self)
  #  self #when we save something, the thing just saved gets returned in the entire array.
  #end

  #def self.find_or_create_by_name(name)
  #self.find_by_name(name) || self.create_by_name(name)
  #end

  #def self.find_by_name(name) #
  #  @@all.detect do |artist|
  #    artist.name == name #checks if the quantities on the left & right are equal or not.
  #end
#end

#  def self.create_by_name(name)
#    artist = self.new(name).save
#  end

#  def print_songs
#    @songs.each {|s| puts s.name }
#  end
#end

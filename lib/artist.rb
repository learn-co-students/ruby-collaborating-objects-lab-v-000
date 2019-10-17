require 'pry'
class Artist
  attr_accessor :name, :songs, :all
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self if !song.artist #checks if artist exists and to set itself as artist
    @songs << song #puts song into the artist's song array
  end

  def self.find(name)
    @@all.find {|artist| artist if artist.name == name} #checks all for artist's name using the string argument, and returns that object - used for find_or_create_by_name
  end

  def self.create(name)
    Artist.new(name).tap{|artist| artist.save} #create method saves a new artist - can be used in other methods
  end

  def self.find_or_create_by_name(name) #allows you to use a string as an argument to return an artist object
    if Artist.find(name) # if this returns true
     Artist.find(name)  #return the artist object
   else
     Artist.create(name) #creates artist object if unable to locate artist
    end
    # binding.pry
  end

  def save
    @@all << self #adds artist to @@all array
  end

  def self.all
    @@all #exposes @@all array
  end

  def print_songs #prints the songs in an artist's collection
    @songs.each do |song|
      puts song.name
    end
  end
end

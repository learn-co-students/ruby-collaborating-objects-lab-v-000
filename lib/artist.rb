require 'pry'

class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
    #without .class the #save method would 
    #be looking for an #all method at the instance level
    #self here refers to the particular artist receiver
    #i need to climb out of this instance to access 
    #artist as a class to get to @@all
  end

  def self.create_by_name(name)
    artist = Artist.new(name)
  end

  def self.find_by_name(name)
    @@all.detect{|artist| artist.name == name}
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end

  def print_songs
    @songs.each {|song| puts song.name}
    #see above reasoning in blocked-out message for "song.name"
  end

end

#reminders: @@abcXYZ vs @abcXYZ
#I'm saving the artists to the @@all array (class scope)
#Each individual artist has their own set of songs
#I can add songs to any particular artist's @song array (instance scope)
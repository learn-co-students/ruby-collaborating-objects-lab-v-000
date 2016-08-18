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

  def self.find_or_create_by_name(name)
    unless @@all.detect {|artist| artist.name == name}
      #i need to put artist.name otherwise i get the data 
      #equivalent of the name (e.g. #<Artist:92340923849>), not the text.
      artist = self.new(name)
    end
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
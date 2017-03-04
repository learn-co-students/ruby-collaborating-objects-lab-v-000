require 'pry'
class Song
  #attr_accessor :name, :artist
  def artist=(artist)#setter method
    @artist = artist
  end
  def artist
    @artist
    #binding.pry
  end
  def name=(name)#setter method
    @name = name#class Song
    #binding.pry
  end
  def name
    @name
  end
  def initialize(name)
    @name = name
    #@artist = artist
  end
#Scenario terminal calls instance method
#import
  #Given= Context: import instance method calls
  #class method, per Rspec Dot.new_by_filename,
  #when= Events: during iteration of import instance
  #method calls,
  #then= Outcomes:to return a Song object instance
  def self.new_by_filename(filename)
    split = filename.split(" - ")
    artist_name = split[0]
    song_name = split[1]
  #In order to <instantiate a new Song object>
  #As a <Song needs an object instance.
  #I want a instance method call to create a new Song object
    song = self.new(song_name)
  #Given= Context: import instance method calls
  #class method, per Rspec Dot.new_by_filename,
  #when= Events: during iteration of import instance
  #method calls,
  #then= Outcomes:to return a Song object instance
    song.artist_name = artist_name
    #Outcome: to assign artist_name
    #object instance to variable
    #artist_name, a Song object instance
    #In order to <assign an Artist to a Song>
    #As a <Song needs an Artist>
    #I want a|an <artist_name helper setter method>
    #binding.pry
    song
  end
  def artist_name=(name)# a setter method not in RSPEC
    #Outcome: to assign an artist
    #object instance to a song instance
    #Event: when called by Song object instance
    #In order to <assign an Artist to a Song>
    #As a <Song needs an Artist>
    #I want a|an <artist_name setter method>
    self.artist = Artist.find_or_create_by_name(name)
    #In order to <save an artist to the class variable>
    #As a|an <Artist needs to be added to its class>
    #I want a|an <call of instance method, add_song>
    binding.pry
    artist.add_song(self)
    #call artist, which like a foreign_key_equivalent,
    #to allow instance method, add_song from Artist
    #class to receive Song object, self
    #binding.pry
  end
end

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
    binding.pry
  end
  def name
    @name
  end
  def initialize(name)
    @name = name
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
    song = self.new(song_name)
    #??WHY??=Outcome;set song to
    #class Song object instance
    #binding.pry
    song.artist_name = artist_name
    #Outcome: to assign artist_name
    #object instance to variable
    #song, a Song object instance
    binding.pry
    song
  end
  def artist_name=(name)# a setter method
    #Outcome: to assign an artist
    #object instance to a song instance
    #Event: when called by Song object instance
    #In order to <assign an Artist to a Song>
    #As a <Song needs an Artist>
    #I want a|an <artist_name setter method>
    #binding.pry
    #a new Artist object instantiated and
    #assigned to @artist
    #as a result of class method, self.artist
    self.artist = Artist.find_or_create_by_name(name)
    #foreign_key_equivalent=
    #binding.pry
    artist.add_song(self)
    #adds Song object instance to Artist object instance
    #call artist, which like a foreign_key_equivalent,
    #to allow instance method, add_song from Artist
    #class to receive Song object, self
    #bindinSg.pry
  end
end

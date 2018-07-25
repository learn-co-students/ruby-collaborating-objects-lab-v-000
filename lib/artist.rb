require 'pry'

class Artist
  attr_accessor :name #name=   This allows you to call .name (method) on something (spec 2)
 attr_reader :songs #need to add a reader bc artist class needs to be able to 'read' the instances stored at the @songs array (artist spec 3)

  @@all = [] #class var to store all instances of artists. it is the CLASS ARTIST's responsibility to know about each artist.

  def initialize(name) #specs requir meth to initialze with name (spec 1). take in argu of name bc this will be different each time
    @name = name #local var set to the instance var (as an instance we can manipulate it, unlike just a string)
    @songs = [] #set empty array to catch all of the instanaces
  end

  def self.all #self inside of the artist class IS THE artist class
    @@all #all of the artist class instances are stored in here
  end

  #Create artist if he/she doesn't exist yet or find instance of that artist!
  def self.find_or_create_by_name(name) #artist is an object, name is a string
    @@all.detect {|artist| artist.name == name} || name = self.new(name).save #need to add the save here bc new just creates it!
  end

  def add_song(song)
    @songs << song #keeps track of artsits songs (sec 3)
  end

#instance meth to save the artist instance to the @@all class var. this is a sep meth from add_song bc..????
#don't need an argument here!
#SELF = the artist class itself inside of this method (class var scope can extend into instance vars)
  def save #you just want to save that one instance of an artist! dont want to get every artist ever returned back to you
    @@all << self #artist object gets pushed into the @@all array
    self #the one object/instance we just saved gets returned now
  end

  def print_songs #just need to rpint out all of the names of the songs. iterate through array of @songs and turn into string?
    @songs.each {|songinstance| puts songinstance.name}
  end

end

class Artist
  attr_accessor :name
  @@all = [] #all CLASS variable

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all #returns entire class of artists, not just one instance
  end

  def save
    self.class.all << self #adds this instance of artist to entire Artist class
  end

  def add_song(song)
    @songs << song #add THIS song instance to the Artist songs array for THIS instance
  end

  def songs
    @songs #returns array of songs for this instance of Artist
    #binding.pry
  end

  def self.find_by_name(name)
    self.all.detect{|song| song.name == name}
    #use self.all method to refer to ENTIRE Song class to check if that song is included
  end

  def self.create_by_name(name)
    song = self.new #instantiates new song
    song.name = name #assign name property
    song.save #saves song via save class method
    song #returns the song
  end

  def self.find_or_create_by_name(name)
    binding.pry
    self.find_by_name(name) ? self.find_by_name(name) : self.create_by_name(name)
  end

end

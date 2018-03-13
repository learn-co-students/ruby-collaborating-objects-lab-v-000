class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    self.name = name
    @songs = []
    @@all << self
  end

  def add_song(song) # Need to define the add_song method, as the songs reader method already exists
    @songs << song
  end

  def save # Saves each instance of the artist
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name) #Finds the artist by name if they already exist and returns them
    self.all.find {|artist| artist.name == name}
  end

  def self.create_by_name(name) #Creates the new instance of Artist by name
    artist = self.new(name)
    artist.name = name
    artist
  end

  def self.find_or_create_by_name(name) #Finds or creates the instance if it doesnt exist
    self.find_by_name(name) || self.create_by_name(name)
  end

  def print_songs
    # Prints all songs belonging to an artist. Don't need to do anything special, as @songs
    # only stores songs belonging to a particular artist instance only
    @songs.each {|x| puts x.name}
  end
end

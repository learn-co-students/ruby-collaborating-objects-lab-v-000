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

  def self.find_or_create_by_name(name) # Returns the artist name if it exists, or creates a new artist with that name
    @@all.any? {|artist| artist.name == name} ? self : self.new(name)
  end

  def print_songs
    # Prints all songs belonging to an artist. Don't need to do anything special, as @songs
    # only stores songs belonging to a particular artist instance only
    @songs.each {|x| puts x.name}
  end
end

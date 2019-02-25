class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name #setter
    @songs = []
  end

  def self.all #class method - class reader
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(artist)
    match = @@all.detect { |artist_object| artist_object.name == artist }
    # iterate through all artists' @name and check if it matches argument
    # I use #detect as it returns nil if no match is found - in this way it becomes a flag (I'm hoping that's cool)
    match != nil ? match : Artist.new(artist)
    # if a match doesn't exist, create a new Artist object with the argument as its initialized @name
  end

  def print_songs
    print self.songs
  end

end #<--- class end

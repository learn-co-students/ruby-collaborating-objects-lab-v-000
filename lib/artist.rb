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

  def self.find_or_create_by_name(name)
    match = @@all.detect { |artist_object| artist_object.name == name }
    # iterate through all artists' @name and check if it matches argument
    # I use #detect as it returns nil if no match is found - in this way it becomes a flag (I'm hoping that's cool)

    match != nil ? match : Artist.new(name)
    # if a match doesn't exist, create a new Artist object with the argument as its initialized @name
  end

  def print_songs
    @songs.find_all { |song_object| puts song_object.name }
  end

end #<--- class end

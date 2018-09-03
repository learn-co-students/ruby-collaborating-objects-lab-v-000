class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all #class level method all
    @@all
  end

  def self.find_or_create_by_name(name)
    self.all.detect {|artist| artist.name == name} || Artist.new(name)
  end
  #all instances of Artist are saved to the class variable all.
  #in this method, we're iterating through all and seeing if the individual artist name matches the name argument
  #when we find a match, we will return it
  #if we don't, left side will evaluate to false and move onto other side of OR statement and create new artist

  def print_songs
    @songs.each { |song| puts song.name }
  end

end

class Artist
  
  attr_accessor :name, :songs

  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
  end

# helper/getter method
  def self.all
    @@all
  end

# why need a save button? Could be done at initialize?
  def save
    @@all << self
  end

# helper method for .find_or_create_by_name -> the create part
  def self.create(name)
    artist = Artist.new(name)
    artist.save
    artist
  end

  def self.find_or_create_by_name(name)
    self.create(name) unless self.all.detect {|artist| artist.name == name}
  end

# Need the getter for @name in song.rb --> attr_accessor :name 
  def print_songs
    songs.each {|song| puts song.name}
  end

end

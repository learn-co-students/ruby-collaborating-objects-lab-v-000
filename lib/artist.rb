class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end


  def add_song(song)
    @songs << song
  end

#This class method should take the name that is passed in (remember, it will be a string), and do one of two things.
#Find the artist instance that has that name or create one if it doesn't exist.
#Either way, the return value of the method will be an instance of an artist with the name attribute filled out.

  def self.find_or_create_by_name(name)
    @@all.detect {|artist| artist.name == name} || self.new(name)

  end


  def songs
    @songs
  end

  def print_songs
    @songs.each { |song| puts song.name }
  end


end

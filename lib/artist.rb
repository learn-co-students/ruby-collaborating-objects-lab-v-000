# Artist class

# It will probably be useful to create a couple of helper methods to assist with the methods below.
# Artist.find_or_create_by_name(name)

# This class method should take the name that is passed in (remember, it will be a string), and do one of two things. Find the artist instance that has that name or create one if it doesn't exist. Either way, the return value of the method will be an instance of an artist with the name attribute filled out.
# Artist#add_song(song)

# This instance method exists to tell the artist about its songs. Simply take the Song instance that is passed in as an argument and store it in a songs array with all the other songs that belong to the artist.

class Artist

attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    self.all.detect { |a| a.name == name} || self.new(name)
  end

  def print_songs
    songs.each { |s| puts s.name}
  end

end

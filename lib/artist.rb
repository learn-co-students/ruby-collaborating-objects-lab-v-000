# Artist
#   #initialize with #name
#     accepts a name for the artist (FAILED - 1)
#   #name=
#     sets the artist name (FAILED - 2)
#   #songs
#     keeps track of an artist's songs (FAILED - 3)
#   #save
#     adds the artist instance to the @@all class variable (FAILED - 4)
#   .find_or_create_by_name
#     finds or creates an artist by name maintaining uniqueness of objects by name property (FAILED - 5)
#     Creates new instance of Artist if none exist (FAILED - 6)
#   #print_songs
#     lists all of the artist's songs (FAILED - 7)

class Artist
  attr_accessor :name, :songs

  @@all = []

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.find(name)
    self.all.find {|artist| artist.name == name }
  end

  def self.create(name)
    self.new(name).tap {|artist| artist.save}
  end

  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
  end

  def save
    @@all << self
  end

  def print_songs
   songs.each {|s| puts s.name}
  end

  def songs
    @songs
  end
end

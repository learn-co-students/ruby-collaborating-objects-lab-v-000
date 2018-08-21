class Artist
  attr_accessor :name
  attr_reader :songs  # Make songs a reader so it cannot be changed from an array
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  # Instance method that takes a song instance from the Song class
  # and adds it to the artist's songs array
  def add_song(song)
    song.artist = self
    @songs << song
  end

  # Class method that displays all artist instances
  def self.all
    @@all
  end

  # Add an artist instance to the @@all class variable.
  def save
    @@all << self
  end

  # Find the artist instance with the value "name" or create one if
  # it doesn't already exist. Iterate over the @@all class variable to
  # find each artist instance. If the artist instance's name is equal
  # to the argument name, return that artist instance. If not, create
  # a new artist instance using the name in the method argument.
  def self.find_or_create_by_name(name)
    @@all.each {|artist| return artist if artist.name == name}
    new_artist = Artist.new(name)
    new_artist.save
    new_artist
  end

  # Access a list of the artist instance's songs by the @songs
  # instance variable, then iterate over the array, printing
  # each song name with a line break following.
  def print_songs
    self.songs.each {|song| puts "#{song.name}\n"}
  end

end

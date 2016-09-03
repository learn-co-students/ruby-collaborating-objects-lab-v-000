class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  # This instance method exists to tell the artist about its songs. Simply take
  # the Song instance that is passed in as an argument and store it in a songs
  # array with all the other songs that belong to the artist.

  def add_song(song)
    @songs << song
  end

  def self.find(name)
    self.all.find {|artist| artist.name == name }
  end

  def self.create(name)
    @name = name
    @name.save
  end

  # This class method should take the name that is passed in (remember, it will be a string),
  # and do one of two things. Find the artist instance that has that name or create one
  # if it doesn't exist. Either way, the return value of the method will be an instance
  # of an artist with the name attribute filled out.

  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
  end

  def print_songs
    songs.each {|song| puts song.name}
  end
end

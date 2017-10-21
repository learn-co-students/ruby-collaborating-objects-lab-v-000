class Artist

  attr_accessor :name, :songs

  @@all = []
#accepts a name for the artist, sets the artist name
#keeps track of an artist's songs
  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

#adds the song into the song array, keeping track of an artist's songs
  def add_song(song)
    @songs << song
  end
#finds or creates an artist by name maintaining uniqueness of objects by name property, creates new instance of Artist if none exist
  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
  end
#finds an artist name by maintaining uniqueness of objects by name property.
  def self.find(name)
    self.all.find {|artist| artist.name == name}
  end
#creates an artist by name maintaining uniqueness of objects by name property
  def self.create(name) # .tap yields self to the block, and returns self
    self.new(name).tap {|artist| artist.save} #.save puts the artist into the @@all array
  end
#adds the artist instance to the @@all class variable
  def save
    @@all << self
  end
#lists all of the artist's songs
  def print_songs
    songs.each {|song| puts song.name}
  end

end

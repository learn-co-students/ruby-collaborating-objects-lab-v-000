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

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end

#reminders
#I'm saving the artists to the @@all array (class scope)
#Each individual artist has their own set of songs
#I can add songs to any particular artist's @song array (instance scope)
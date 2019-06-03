class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs =[]
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    self.all.detect {|artist| artist.name == name} || Artist.new(name) #will check the all aray for name matches, and if false, ruby will create a new instance of artist
  end

  def print_songs
    @songs.each {|song| puts song.name} #will iterate over song array, and output the name of the song
  end

end

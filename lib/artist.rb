class Artist
  attr_accessor :name, :songs
  @@all = [] #all CLASS variable

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all #returns entire class of artists, not just one instance
  end

  def save
    @@all << self #adds this instance of artist to entire Artist class
    self
  end

  def add_song(song)
    @songs << song #add THIS song instance to the Artist songs array for THIS instance
  end

  def self.find_or_create_by_name(name)
    #self.all.detect{|artist| artist.name == name
    self.all.detect {|artist| artist.name == name} || self.new(name).save

  end

  def print_songs
    songs.each {|song| puts song.name} #itirate through songs array and puts artist song name
  end

end

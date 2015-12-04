class Artist 
  attr_accessor :name, :song

  @@all = []

  def initialize(name)
    @name = name
    @songs = []


  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song

  end

  def print_songs
    puts @songs
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def size
    @@all.count
  end

  def self.create_by_name(name)
    artist = Artist.new(name)
    artist.name = name
    artist.save
    artist
  end

  def self.find_by_name(name)
    self.all.detect {|artist| artist.name == name}
  end

  
  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)

  end

  



end # ends Artist class





#################Questionable Functionality######################
  #def self.create_by_name(name)
    ##artist.name = name
    #artist
  #end

  #def self.find_by_name(name)
    #self.all.detect {|artist| artist.name == name}
  #end
  
  ##################################################################
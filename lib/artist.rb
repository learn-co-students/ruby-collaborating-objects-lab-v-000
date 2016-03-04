class Artist
  attr_accessor :name, :title, :artist

  @@all = []

  def initialize(name)
    @name = name
    @artist = artist
    @title = title
    @songs = []
  end
  
  def songs
    @songs
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
    
  end

end
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
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.create(name)
    artist = Artist.new(name)
    @name = name
    artist.save
    artist
  end
  
  def self.find_or_create_by_name(name)
    if self.all.detect{|a| a.name == name} == nil
      self.create(name)
    else
      self.all.detect{|a| a.name == name}
    end
  end
  
  def print_songs
    @songs.each{|song| puts song.name}
  end
end
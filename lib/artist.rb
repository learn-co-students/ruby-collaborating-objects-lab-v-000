
class Artist
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(artist)
    @name = artist
    @songs = []
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    self.songs << song
  end
  
  def save
    self.class.all << self
  end
  
  def self.find_or_create_by_name(name)
    self.all.detect { |musician| musician.name == name} || Artist.new(name)
  end
  
  def print_songs
    self.class.all.each { |singer| puts singer.name }
  end
end


class Artist
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(artist)
    @name = artist
    @songs = []
    save
  end
  
  def self.all
    @@all
  end
  
  def save
    self.class.all << self
  end
  
  def add_song(song)
    self.songs << song
  end
  
  def self.find_or_create_by_name(name)
    self.all.detect { |musician| musician.name == name} || self.new(name)
  end
  
  def print_songs
    songs.each { |song| puts song.name }
  end
end

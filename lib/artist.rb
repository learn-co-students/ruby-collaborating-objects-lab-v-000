class Artist
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def self.find_or_create_by_name(name)
    @@all.each {|artist| return artist if artist.name == name}
    name = Artist.new(name)
    name.save
    name
  end
  
  def add_song(song)
    self.songs << song
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
  end
  
  def print_songs
    @songs.each{|song| puts song.name}
  end
  
end
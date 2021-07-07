class Artist
  
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def self.find_or_create_by_name(name)
    if self.find(name)
      self.find(name)
    else
      self.create(name)
    end
  end
  
  def self.create(name)
    artist = Artist.new(name)
    artist.save
    artist
  end
  
  def self.find(name)
    self.all.detect { |artist| artist.name == name}
  end
  
  def print_songs
    @songs.each {|song| puts "#{song.name}"}
  end
  
  def add_song(song_name)
    @songs << song_name
  end
  def save
    @@all << self
  end
  
  
  def songs
    @songs
  end

  def self.all
    @@all
  end
end
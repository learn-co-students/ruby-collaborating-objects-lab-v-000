class Artist
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all  
  end
  
  def add_song(song)
    song.artist = self
    @songs << song
  end
  
  def songs
    @songs
  end

  def self.create_by_name(name)
    artist = self.new(name)
    artist
  end
  
  def self.find_by_name(name)
    self.all.detect{|artist| artist.name == name}
  end
  
  def self.find_or_create_by_name(name)
    if self.find_by_name(name) == nil
      self.create_by_name(name)
    else
      self.find_by_name(name)
    end
  end
  
  def print_songs
    @songs.each { |song| puts "#{song.name}" }
  end
end
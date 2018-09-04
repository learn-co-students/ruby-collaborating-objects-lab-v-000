class Artist
  attr_accessor :name, :songs

  @@all = [] 
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def save
    @@all << self
  end
  
  def add_song(song)
    @songs << song
  end
  
  def self.find(name)
    self.all.find { |a| a.name == name}
  end
  
  def self.create(name)
    self.new(name).tap {|a| a.save}
  end
  
  def self.create_by_name(name)
    song = self.create
    song.name = name
    song
  end
  
  def self.find_or_create_by_name(name)
    self.find(name) || self.create(name)
  end
  
  def self.all
    @@all
  end
  
  def print_songs
    songs.each {|s| puts s.name}
  end
  
end
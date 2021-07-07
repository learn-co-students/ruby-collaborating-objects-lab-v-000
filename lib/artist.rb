class Artist
  attr_accessor :name
  attr_reader :songs
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
    self
  end
  
  def add_song(song)
    @songs << song unless @songs.include?(song)
    song.artist = self
  end
  
  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end
  
  def self.find_by_name(name)
    @@all.detect do |artist|
      artist.name == name
    end
  end
  
  def self.create_by_name(name)
    self.new(name).save
  end
  
  def print_songs
    @songs.each { |song| puts song.name }
  end
end
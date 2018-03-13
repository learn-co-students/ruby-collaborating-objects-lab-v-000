class Artist

  @@all = []
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end 

  def self.find_or_create_by_name(name)
    self.find_by_name(name) ? self.find_by_name(name) : self.create_by_name(name) 
  end

  def self.find_by_name(name)
    self.all.detect {|artist| artist.name == name}
  end

  def self.create_by_name(name)
    artist = self.new(name)
    artist.save
    artist 
  end

  def print_songs
    songs.each do |song|
      puts song.name
    end
  end

end
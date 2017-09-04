class Artist
  attr_accessor :name

  @@all=[]

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find(name)
    @@all.find {|artist| artist.name == name}
  end

  def self.create_by_name(name)
    artist = self.new(name)
    artist.name = name
    artist.save
    artist
  end

  def self.find_or_create_by_name(name)
    if self.find(name)
      self.find(name)
    else
      self.create_by_name(name)
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end

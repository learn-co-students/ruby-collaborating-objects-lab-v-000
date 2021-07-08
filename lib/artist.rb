class Artist
  attr_accessor :name
  @@all = []


  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def add_song(song)
    self.songs << song
    song.artist = self
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

  def self.create_by_name(name)
    artist = self.new(name)
    artist.name = name
    artist
  end

  def self.find_by_name(name)
    self.all.detect{|artist| artist.name == name}
  end


  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

end

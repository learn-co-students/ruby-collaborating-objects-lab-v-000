
class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song unless @songs.include?(song)
    song.artist = self unless song.artist == self
  end

  def save
    @@all << self
    self
  end

  def self.all
    @@all
  end

  def self.create_by_name(name)
    self.new(name).save
  end

  def self.find_by_name(name)
    @@all.detect do |artist|
      artist.name == name
    end
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

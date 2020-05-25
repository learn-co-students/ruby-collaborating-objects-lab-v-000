require "pry"
class Artist
  attr_accessor :name, :songs
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(title)
  @songs << title
  end

  def save
    @@all << self
    # binding.pry
  end

  def self.find(name)
    self.all.detect { |artist| artist.name == name }
  end

  def self.create(name)
    artist = Artist.new(name)
    artist.save
    artist
  end

  def self.find_or_create_by_name(name)
    self.find(name) || self.create(name)
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end

end

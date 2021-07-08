require 'pry'
class Artist
  attr_accessor :name, :songs, :all
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create_by_name(name)
    artist = Artist.new(name)
    artist.name = name
    @@all << artist
    artist
  end

  def self.find_or_create_by_name(name)
    if self.all.detect {|i| i.name == name}
      self.all.detect {|i| i.name == name}
    else
      self.create_by_name(name)
      # binding.pry
    end
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

end

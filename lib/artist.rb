require 'pry'

class Artist

attr_accessor :name, :songs
@@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(name)
    @songs << name
    name.artist = self
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.songs
    @songs
  end

  def self.find_or_create_by_name(name)
    artist = self.all.detect {|artist| artist.name == name}
    if artist != nil
      artist
    else
      name = self.new(name)
      name.save
      name
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end

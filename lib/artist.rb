require 'pry'
class Artist
  @@all = []
  attr_accessor :name, :songs
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  def save
    @@all << self
  end
  def add_song(song)
    self.songs << song
  end
  def self.find_or_create_by_name(name2)
    @@all.each do |artist|
      if artist.name == name2
        return artist
      end
    end
    artist = Artist.new(name2)
  end
  def self.all
    return @@all
  end
  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end

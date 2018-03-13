require 'pry'
class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
  end
  def add_song(song)
    song.artist = self
    @songs << song
  end
  def songs
    @songs
  end
  def save
    @@all << self
  end
  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    artist = self.all.find do |n|
      n.name == name
    end
    if !artist
      artist = self.new(name)
      artist.save
    end
    artist
  end #여기 복습

  def print_songs
    @songs.each {|song| puts song.name}
  end

end
#binding.pry

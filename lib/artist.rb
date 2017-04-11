require "pry"
class Artist
  attr_accessor :name, :songs
  @@all=[]
  def initialize (name)
    @name=name
    @songs=[]
    @@all<<self
  end
  def self.find_or_create_by_name(name)
    artist=self.all.detect{|artist| artist.name==name}
    #binding.pry
    if (artist==nil)
      artist=self.new(name)
      self.all<<artist
    end
    artist
  end
  def add_song(song)
    @songs<<song
    song.artist=self
  end
  def save
    @@all<<self
  end
  def self.all
    @@all
  end
  def print_songs
    @songs.each{|song|puts song.name}
  end
end

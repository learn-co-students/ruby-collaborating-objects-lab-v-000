require 'pry'
class Artist
  attr_accessor :name, :songs
    @@all = []
  def initialize(name)
    @name = name
    @songs = []
    #@artist = artist
  end
    def add_song(song)
      @songs<< song
    end
    def self.all
      @@all
    end
    def save
      @@all << self
    end
  def self.find_or_create_by_name (name)
    if self.all.detect {|i| i.name == name}
      self.all.detect {|i| i.name == name}
    else
      self.create(name)
    end
  end
  def self.create(name)
      artist = self.new(name)
      binding.pry
      artist.save
      binding.pry
      #artist
  end
  def print_songs
    songs.each{|song| puts song.name}
    #binding.pry
  end
end

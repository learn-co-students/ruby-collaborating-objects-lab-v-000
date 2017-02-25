require 'pry'
class Artist
  attr_accessor :name, :songs, :artist
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    @artist = artist#=rspec line 30....to include(artist)
    #@@all << self
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
    if @@all.detect do |i|#search enumerable to return
      #binding.pry
      i.name == name end # i.name Reads value of i object
      #and name attribute of i
      #returns found match instance of (artist_1).to eq(artist_2)
    else
      self.create(name)
    end
    def self.create(name)
      artist = self.new(name) #instantiates new objects
      #artist.save
      artist
    end
      #binding.pry
    def print_songs
      @@all.name
    end

end

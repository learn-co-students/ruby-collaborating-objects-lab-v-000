require 'pry'

class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
  end
  #keep track of an artists songs
  def add_song(song)
    @songs << song
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
  def self.find_or_create_by_name(name)
    #binding.pry
    self.all.find {|artist| artist.name ==name} ? self.all.find {|artist| artist.name ==name} : self.create(name)
  end
  def find_or_create_by_name
    self.find(name) ? self.find(name) : self.create(name)
  end
  def self.create(name)
    self.new(name).tap {|x| x.save}
  end
  def print_songs

    @songs.each {|x| puts x.name}
  end
end


#    ruby lib/artist.rb
 

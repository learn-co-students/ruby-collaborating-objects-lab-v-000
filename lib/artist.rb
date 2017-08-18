require "pry"

class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def self.find_by_name(name)
    self.all.detect{|artist| artist.name == name}
  end

#searches @@all for an object with the given string name.  If an object with that name is found, return that object.  Else, create a new object and give it that name.
  def self.find_or_create_by_name(name)
    search = self.find_by_name(name)
    search ? a = search : a = Artist.new(name)
    a
  end


  def add_song(some_song)
    @songs << some_song
  end

  def self.all
    @@all
  end

  def save
    self.class.all.push(self)
  end

  def print_songs
    self.songs.each{|song| puts song.name}
  end



end

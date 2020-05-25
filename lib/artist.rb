require 'pry'

class Artist

  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.find_or_create_by_name(name)
   if self.all.find {|artist| artist.name == name }
   else
     artist = Artist.new(name)
   end
  end

  def add_song(song)
    #song = Song.class.artist == artist.name
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

  def print_songs
    self.songs.each {|song| puts "#{song.name}"}
  end

binding.pry
end

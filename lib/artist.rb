require 'pry'
class Artist
  attr_accessor :name
  @@all = []

  def self.all
    @@all  # keeps track of artist
  end

  def initialize(name)
    @name = name
    @songs = []  # keeps track of songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end


  def self.create(string)
    artist_name = self.new(string)
    @@all << artist_name
    artist_name
  end

  def self.new_by_name(string)
    artist_name = self.new(string)
    artist_name.name = artist_name
    artist_name
  end

  def self.find_by_name(string)
   self.all.detect do|artist_name| artist_name.name == string
   end
  end

  def self.create_by_name(string)
   artist_name = self.create(string)
   artist_name.name = string
   artist_name
  end

  def self.find_or_create_by_name(string)
   self.find_by_name(string) || self.create_by_name(string)
  end

  def songs
    @songs
  end

  def save
    self.class.all << self
  end

  def print_songs
    @songs.collect do |song|
      puts "#{song}"
    end
  end

end

# require 'pry'
# require './song.rb'

class Artist
  
  attr_accessor :name, :title, :songs
  
  @@all = []
  @@songs = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    @songs << song
    @@songs << song
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.create_by_name(name)
    artist = self.new(name)
    artist.name = name
    @@all << artist
    artist
  end
  
  def self.find_by_name(name)
    @@all.each do |artist|
      if artist.name == name
        return artist
      end
    end
    nil
  end
  
  def self.find_or_create_by_name(name)
    if self.find_by_name(name) == nil
      self.create_by_name(name)
    else
      self.find_by_name(name)
    end
  end
  
  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
  
end

# artist = Artist.new("Whatever")
# artist.add_song(Song.new("Also Whatever"))
# artist.print_songs
require 'pry'
class Artist
  
attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all = []
  end
  
  def add_song(song)
    song.artist = self
    @songs << song
    @songs
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def find_or_create_by_name
    @@all.uniq
  end
  
  def self.find_or_create_by_name(new_song)
    @@all.find do |song|
      if song.name == new_song
        return song.name
      else
        new_song = Artist.new(new_song)
        @@all << new_song.name
        return new_song
      end
    end
  end
  
end
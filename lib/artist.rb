require 'pry'

class Artist
  attr_accessor :name, :songs, :all
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    #need to pass in a block for detect
    if @@all.detect {|n| n.name == name}
      @@all.find {|n| n.name == name}
    else
      new_artist = self.new(name)
      new_artist.save #need this to save the artist you add 
      new_artist
    end
  end

  def print_songs
    songs.each {|s| puts s.name}
  end
end

require 'pry'
class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
      if @@all.detect {|artist| artist.name == name}
        return @@all.detect {|artist| artist.name == name}
      else
        new_artist = self.new(name)
        @@all << new_artist
        new_artist
      end
  end

  def print_songs
    @songs.each {|artist| puts "#{artist.name}"}
  end
end

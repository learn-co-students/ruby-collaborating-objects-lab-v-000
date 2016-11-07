require 'pry'
class Artist
  attr_accessor :name, :all
  @@song_count = 0
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def self.add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def self.find_or_create_by_name(name)
    if @@all.find {|c| c.name == name}
      @@all.find {|c| c.name == name}
    else
      artist = Artist.new(name)
      @@all << artist
      artist
    end
  end

  def print_songs
    @songs.each {|song| puts "#{song.name}"}
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    @songs
  end

end

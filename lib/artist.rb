require 'pry'

class Artist
attr_accessor :name, :song
@@all = []


  def initialize(name)
    @name = name
    @songs = []
  end

  def name
    @name
  end

  def songs
    @songs
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

  def self.find_by_name(name)
    Artist.all.detect {|artist| artist.name == name}
  end

  def self.create_by_name(name)
    artist = Artist.new(name)
    artist.save
    artist
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end

  def print_songs
    self.songs.each do |s|
      puts s.name
    end
  end

end

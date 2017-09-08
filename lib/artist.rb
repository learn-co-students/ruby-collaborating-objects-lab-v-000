require 'pry'
class Artist
  attr_accessor :name
  attr_reader :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name(name)
    res = false
    a = {}
    self.all.each do |artist|
      res = artist.name == name ? true : false
      res ? a = artist : a = {}
      break if res == true
    end

    if res == false
      a = Artist.new(name)
      a.save
    end
    a
  end

  def print_songs
    songs.each do |song|
      puts song.name
    end
  end

  def save
    @@all << self
  end
end

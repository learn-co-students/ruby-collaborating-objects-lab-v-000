require 'pry'
class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
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

  def self.find_or_create_by_name(name)
    if first_artist = self.all.detect {|artist| name == artist.name}
        first_artist
    else
      new_artist = self.new(name)
      new_artist.save
      new_artist
    end

  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

end

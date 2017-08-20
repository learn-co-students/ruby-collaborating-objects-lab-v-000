require 'pry'

class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def save
    self.class.all << self
  end

  def self.all
    @@all
  end

  def print_songs
    self.songs.each do |song|
        puts song.name
    end
  end

  def self.find(artist_name)
    self.all.detect {|artist| artist.name == artist_name}
  end

  def self.find_or_create_by_name(artist_name)
    self.find(artist_name) ? self.find(artist_name) : self.new(artist_name)
  end

  def add_song(song)
    self.songs << song
  end

end

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

  def add_song(song)
    @songs<<song
    song.artist = self
  end

  def self.find_or_create_by_name(artist_name)
    self.all.detect { |x| x.name == artist_name } || self.new(artist_name)
  end

  def print_songs
    @songs.each do |x|
      puts x.name
    end
  end

  def self.all
    @@all
  end

end

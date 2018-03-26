require 'pry'

class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(artist_name)
    @name = artist_name
    @songs = []
    save
  end

  def self.find_or_create_by_name(artist_name)
    a = @@all.find{|x| x.name == artist_name}
    a ? a : self.new(artist_name)
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

  def print_songs
    @songs.each {|x| puts x.name}
  end

end

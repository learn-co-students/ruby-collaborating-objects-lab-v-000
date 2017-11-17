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
  end

  def self.all
    @@all
  end

  def save
    @@all << self
    self
  end

  def self.find_or_create_by_name(name)
    artist = @@all.detect {|artist| artist.name == name}
    if artist.nil?
      saved = Artist.new(name)
      saved.save
    else
      artist
    end
  end

  def print_songs
    songs.each {|song| puts song.name}
  end

end

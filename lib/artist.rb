require "pry"

class Artist
  @@all = []

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def save
    Artist.all << self
  end

  def add_song(song)
    self.songs << song
  end

  def self.find_or_create_by_name(name)
    if self.all.detect {|artist| artist.name == name}
      self.all.detect {|artist| artist.name == name}
    else
      artist = Artist.new(name)
      artist.save
      artist
    end
  end

  def print_songs
    self.songs.each {|song| puts "#{song.name}\n"}
  end

end

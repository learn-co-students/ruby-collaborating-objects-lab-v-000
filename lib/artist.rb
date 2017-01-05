require 'pry'

class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def save
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    existing_artist = self.all.detect {|artist| artist.name == name}
    if existing_artist != nil
      existing_artist
    else
      new_artist = self.new(name)
      new_artist.save
      new_artist
    end
  end

  def print_songs
    @songs.each do |song|
      print song.name + "\n"
    end
  end

end

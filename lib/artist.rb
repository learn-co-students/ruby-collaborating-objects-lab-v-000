require 'pry'


class Artist
attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_by_name(name)
    @@all.find do |artists|
      artists.name == name
    end
  end


  def self.find_or_create_by_name(name)
    if self.find_by_name(name) != nil
      self.all.detect {|artist| artist.name == name}
    else
      self.new(name)
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

end

require "pry"

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

  def self.all
    # binding.pry
    @@all
  end

  def save
    # binding.pry
    self.class.all << self
    self.class.all
  end

  def self.find_or_create_by_name(name)
    # binding.pry
    if !self.all.find {|artist| artist.name == name}
      # binding.pry
      artist = self.new(name)
    else
      # binding.pry
      artist = self.all.find {|artist| artist.name == name}

    end
    # binding.pry
    artist
  end

  def print_songs
    @songs.each {|song| puts song.name}
    # binding.pry

  end


end

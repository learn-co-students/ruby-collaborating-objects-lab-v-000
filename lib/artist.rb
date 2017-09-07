require 'pry'

class Artist

  attr_accessor :name

  @@all =[]

  def initialize(name)
    @name  = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.all
    @@all  #maybe add .uniq {|artist| artist.name}
  end

  def self.find_or_create_by_name(name)
    if self.all.detect {|a| a.name == name}
      self.all.detect {|a| a.name == name }
    else
      artist = Artist.new(name)
      artist.save
      artist
    end
  end

  def print_songs
    self.songs.each do |song|
      puts song.title
    end
  end

end

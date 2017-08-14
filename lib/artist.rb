require 'pry'
class Artist

  @@all = []
  attr_accessor :name

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
  def self.all
    @@all
  end
  def save
    self.class.all << self
    self
  end
  def self.find_or_create_by_name(name)

    if (self.all.find{|obj| obj.name == name})
      self.all.find{|obj| obj.name == name}
    else
      artist = self.new(name)
      artist.save
    end
  end
  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end

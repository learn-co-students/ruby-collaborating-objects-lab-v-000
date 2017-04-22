require 'pry'

class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @songs=[]
    self.save
  end

  def add_song(song)
    song.artist = self
    @songs<<song
  end

  def self.all
    @@all
  end

  def songs
    @songs
  end

  def save
    if !self.class.all.include?(self)
      self.class.all<<self
    end
    # self.class.all.each {|artist| puts "#{artist.name}"}
  end

  def self.find_artist(name)
    # pry.binding
    self.all.find {|artist| artist.name==name}
  end

  def self.find_or_create_by_name(name)
    if self.find_artist(name)
      self.find_artist(name)
    else
      self.new(name)
    end
  end

  def print_songs
    self.songs.each{|song|
      puts "#{song.name}"
    }
  end
end

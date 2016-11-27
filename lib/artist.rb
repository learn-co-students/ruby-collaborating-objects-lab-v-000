require 'pry'
class Artist

 attr_accessor :name, :songs

 @@all = []
binding.pry

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.create(name)
    self.new(name)
  end

  def self.find(name)
   self.all.detect {|artis| artis.name == name }
  end

  def self.find_or_create_by_name(name)
     self.find(name) || self.create(name)
  end

  def print_songs
     songs.each {|song| puts song.name }
  end

end

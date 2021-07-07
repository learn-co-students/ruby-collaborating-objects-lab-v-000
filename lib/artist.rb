require 'pry'

class Artist

  attr_accessor :name, :songs
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def add_song(song)
    self.songs << song
  end

  def save
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    if @@all.detect {|instance| instance.name == name }
      @@all.detect { |instance| instance.name == name}
    else
      self.new(name)
    end
  end

  def print_songs
    self.songs.each{ |song| puts song.name}
  end
end

require 'pry'

class Artist

  attr_accessor :name, :songs
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    self.class.all << self
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
    if self.all.detect {|instance| instance.name == name }
      self.all.detect { |instance| instance.name == name}
    else
      self.new(name)
    end
  end

  def print_songs
    self.songs.each{ |song| puts song.name}
  end
end

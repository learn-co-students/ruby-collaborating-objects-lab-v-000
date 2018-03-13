require 'pry'

class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    self.name = name
    self.songs = []
    @@all << self
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if @@all.detect {|artist| artist.name == name} != nil
      @@all.detect {|artist| artist.name == name}
    else
      self.new(name)
    end
  end

  def add_song(song)
    self.songs << song
  end

  def print_songs
    songs.each {|song| puts song.name}
  end

  def self.all
    @@all
  end

end
#
# Artist.new("adele")
#
# Artist.new("harry potter")
#
# binding.pry

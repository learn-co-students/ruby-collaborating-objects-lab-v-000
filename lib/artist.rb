require 'pry'

class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

def self.all
  @@all
end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    found_artist = self.all.find {|artist| artist.name == name}
    if found_artist
      found_artist
    else
      new_artist = self.new(name)
      new_artist.save
      new_artist
    end
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

end

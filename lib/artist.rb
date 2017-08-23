require 'pry'
class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(singer)
    found_artist = @@all.find {|artist| artist.name == singer}
    if found_artist
      found_artist
    else
      new_artist = self.new(singer)
      new_artist.save
      new_artist
    end
  end

  def print_songs
    self.songs.each {|song| puts song.name}
  end

end

# binding.pry

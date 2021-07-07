require 'pry'

class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self  # self = Artist instance
    @songs << song
  end

  def songs
    @songs
  end

  def save
    @@all << self  # self = Artist instance
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    potential_artist = @@all.find { |instance| instance.name == name}
    if potential_artist == nil
      potential_artist = Artist.new(name)
      potential_artist.save
    end
    potential_artist
  end

  def print_songs
    self.songs.each do |each_song|  # self = Artist instance
      puts "#{each_song.name}"
    end
  end

end

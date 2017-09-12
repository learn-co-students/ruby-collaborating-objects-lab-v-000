require 'pry'
class Artist
  attr_accessor :name, :songs

  @@song_count = 0
  @@all = []

  def initialize (name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(title)
    song = Song.new(title)
    add_song(song)
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.song_count
    @@song_count
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.detect {|artist| artist.name == name }
  end

  def self.create_by_name(name)
    created = self.new(name)
    created.save
    created
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end

end

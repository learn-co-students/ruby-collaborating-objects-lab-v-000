require 'pry'

class Artist
  attr_accessor :name, :artist, :songs
  @@all = []

  def initialize(name)
    self.name = name
    self.songs = []
    save 
  end

  def add_song(song)
    self.songs << song
  end

  def self.all
    @@all
  end

  def save
      self.class.all << self
  end

  def self.find_or_create_by_name(name)
    found_artist = all.find{|artist| artist.name == name}
    found_artist.nil? ? new(name) : found_artist
  end

  def print_songs
    songs.each{|song| puts song.name}
  end
end
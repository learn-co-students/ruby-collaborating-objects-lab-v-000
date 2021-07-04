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

  def add_song(song)
    songs << song
  end

  def print_songs
    songs.each do |song|
      puts song.name
    end
  end


  def self.all
    @@all
  end


  def self.find_or_create_by_name(name)
    artist = (self.all.find { |artist_instance| artist_instance.name == name})
    if artist == nil
      artist = Artist.new(name)
    end
      artist
  end


end






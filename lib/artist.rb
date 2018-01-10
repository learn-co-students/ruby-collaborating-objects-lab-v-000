require "pry"

class Artist

  @@all = []

  attr_accessor :name, :songs, :song

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.create(artist_name)
    new_artist = self.new(artist_name)
    new_artist.name = artist_name
    @@all << new_artist
    new_artist
  end

  def self.find(name)
    self.all.find do |artist|
      artist.name == name
    end
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist_name)

    if self.find(artist_name)
      self.find(artist_name)

    else
      self.create(artist_name)
    end
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def print_songs
    @songs.each do |instance|
      puts instance.name
    end
  end

end

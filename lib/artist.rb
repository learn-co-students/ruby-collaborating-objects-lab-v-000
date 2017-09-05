require 'pry'

class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    artist_exist = @@all.find {|el| el.name == name}

    if artist_exist == nil
      artist = Artist.new(name)
      artist.save
      artist
    else
      artist_exist
    end
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end


end

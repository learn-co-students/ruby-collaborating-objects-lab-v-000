require 'pry'

class Artist
  @@all = []
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name(name, song = nil)
    @@all.each do |artist|
      if name == artist.name
        if (song == nil)
          return self
        else
          artist.add_song(song)
          return self
        end
      end
    end
    artist = Artist.new(name)
    if(song == nil)
      return artist
    else
      artist.add_song(song)
      return artist
    end
  end

  def self.all
    @@all
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

  def save
    @@all << self
  end
end

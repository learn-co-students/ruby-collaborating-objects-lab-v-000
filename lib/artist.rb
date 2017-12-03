require 'pry'
class Artist
  attr_accessor :name, :songs
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    existing_artist = self.all.detect { | artist | artist.name == name }
    if !existing_artist
      new_artist= Artist.new(name)
      new_artist.save
      new_artist
    else
      existing_artist
    end
  end

  def print_songs
    self.songs.each do | song |
      puts song.name
    end
  end

end

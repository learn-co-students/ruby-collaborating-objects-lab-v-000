require 'pry'

class Artist
  attr_accessor :name, :songs

  @@all = []

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

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    artist_found = self.all.find do |artist|
      artist.name == name
    end
    if artist_found
      artist_found
    else
      self.new(name).tap {|artist| artist.save}
    end
  end

  def print_songs
    songs.each do |song|
      puts song.name
    end
  end

end

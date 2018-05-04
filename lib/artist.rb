require  'pry'

class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self unless song.artist == self
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    Artist.all.find do |artists|
      artists.name == name
    end
  end

  def self.create_by_name(name)
    artist = Artist.new(name)
    artist.save
    artist
  end

  def self.find_or_create_by_name(artist)
    self.find_by_name(artist) ? self.find_by_name(artist) : self.create_by_name(artist)
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end



end

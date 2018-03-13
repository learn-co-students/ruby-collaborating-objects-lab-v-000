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
    @songs << song
  end

  def save
    self.class.all << self
  end

  def self.find_or_create_by_name(name)
    artist = @@all.find do |artist|
      artist.name == name
    end
    if artist != nil
      artist
    else
      artist = Artist.new(name)
      artist.save
      artist
    end
  end

  def print_songs
    @songs.each do |song|
      puts "#{song.name}"
    end
  end
end

require 'pry'
class Artist
  attr_accessor :name, :songs

  @@song_count = 0
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def add_song(song)
    @@song_count += 1
    @songs << song
    song.artist =  self
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    @@all.each do |artist|
      if artist.name == name
        return artist
      end
    end
    return Artist.new(name)
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end
require 'pry'
class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
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
        artist
        puts "sending back #{artist}, class #{artist.class}"
      else
          artist = Artist.new(name)
          artist.save
          puts "sending back NEW #{artist}, class #{artist.class}"
          artist
      end
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

end

require 'pry'

class Artist

  attr_accessor :name, :songs #reader Artist.songs and writer Artist.songs =

  @@all =[]

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self #saves the artist name to the all array
  end

  def self.all
    @@all #displays the all array
  end

  def self.find_or_create_by_name(name)
    artist = @@all.detect {|person| person.name == name}
    if artist.nil?
      Artist.new(name)
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end

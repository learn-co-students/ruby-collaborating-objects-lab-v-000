
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

  def self.all
    @@all
  end

  def save
   @@all << self
  end

  def self.find_or_create_by_name(artist_name)
    if @@all.any? {|artist| artist.name == artist_name}
        @@all.detect{|artist| artist.name = artist_name }
    else
      Artist.new(artist_name)
    end
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

end

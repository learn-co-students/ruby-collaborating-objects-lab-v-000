require 'pry'

class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select{|song| song.artist == self}
  end

  def add_song(song)
    song.artist = self
  end

  def self.find_or_create_by_name(search_name)
    if @@all.none?{|artist| artist.name == search_name}
      self.new(search_name)
    else
      @@all.detect do |artist|
        artist.name == search_name
      end
    end
  end

  def print_songs
     songs.each {|song_object| puts song_object.name}
  end
  
end

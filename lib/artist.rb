require 'pry'

class Artist

  attr_accessor :name, :songs, :song, :artist
  @@all = []

  def initialize(name)
    @name = name
    @songs =[]
  end

  def add_song(song)
    song.artist = self
    self.songs << song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    @@all.find do |artist|
     if artist.name == name
     else new_artist = self.new(name).save
       new_artist
    end
  end
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

end

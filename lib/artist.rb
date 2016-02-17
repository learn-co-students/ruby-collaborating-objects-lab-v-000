require 'pry'
class Artist

  attr_accessor :name, :songs

@@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def add_song(song_object)
    @songs << song_object
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def print_songs
    songs.each {|song| puts song.name}
  end

  def self.find_by_name(artist_name)
    self.all.find {|a| a.name == artist_name}
  end

  def self.find_or_create_by_name(artist_name)
    found = self.find_by_name(artist_name)
    found ? found : self.new(artist_name)
  end

end
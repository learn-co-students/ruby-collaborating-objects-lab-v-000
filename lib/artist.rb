require "pry"
class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize (name)
    @name = name
    @songs = []
  end

  def add_song (new_song)
    songs << new_song
    new_song.artist = self
  end

  def print_songs
    songs.each { | song | puts song.name }
  end

  def save
    @@all << self if !Artist.find_by_name(name)
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name (name)
    Artist.find_by_name(name) || Artist.new(name)
  end

  private
  # Class method because this is called from another class method
  def self.find_by_name (name)
    @@all.detect { | a | a.name == name }
  end
end

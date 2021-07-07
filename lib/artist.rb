require 'pry'

class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  #returns and artist instance w/ the given name (either found or new)
  def self.find_or_create_by_name(name)
    if self.all.find{|person| person.name == name} != nil
      self.all.find{|person| person.name == name}
    else
      Artist.new(name)
    end
  end

  def print_songs
    self.songs.each{|song| puts song.name}
  end

end

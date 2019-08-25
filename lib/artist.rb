require 'pry'

class Artist
attr_accessor :name, :songs

@@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def print_songs
    @songs.each { |el| puts el.name }
  end

  def self.find(name)
    self.all.find {|i| i.name == name}
  end

  def self.create(name)
    self.new(name).tap {|artist| artist.save}
  end

  def self.find_or_create_by_name(artist)
    self.find(artist) ? self.find(artist) : self.create(artist)
  end
end

require 'pry'
class Artist
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  @@all = []

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist)
    @@all.detect { |x| x.name == artist } ? @@all.detect { |x| x.name == artist } : self.new(artist).tap { |x| x.save }
  end

  def print_songs
    songs.each {|x| puts x.name}
  end

end

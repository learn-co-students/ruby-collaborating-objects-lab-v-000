class Artist
  require 'pry'
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end


  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create_by_name(name)
    artist = Artist.new(name)
    artist.save
    artist
  end

# The following is redundant code that is included in .find_or_create_by_name
  # def self.find_by_name(name)
  #   @@all.detect{|x| x.name == name}
  # end

  def self.find_or_create_by_name(name)
    artist_name = @@all.detect{|x| x.name == name}
    if artist_name == nil
      self.create_by_name(name)
    else
      artist_name
    end
  end

  def print_songs
    @songs.each{|song| puts song.name}
  end

end

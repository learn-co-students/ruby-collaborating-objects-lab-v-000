require 'pry'
class Artist

@@all = []

attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    #binding.pry
    song.artist = self
  end

  def songs
    @songs
  end

  def save
    @@all << self
    #binding.pry
  end

  def self.all
    @@all
    #binding.pry
  end

  def self.find_or_create_by_name(name)
  @artist = @@all.find { |artist| artist.name == name}
  if @artist == nil
    artist = self.new(name)
  else
   @artist
  end
 end

  def print_songs
    puts @songs.name
  end

end

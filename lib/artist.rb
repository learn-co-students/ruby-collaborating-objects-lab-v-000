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
    song.artist = self
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find(name)
    self.all.detect do |artist|
      artist.name == name
    end
  end

  def self.create(name)
    artist = Artist.new(name)
    artist.save
    artist
  end

  def self.find_or_create_by_name(name)
    if self.find(name)
      self.find(name)
    else
      self.create(name)
    end 
  end

  def print_songs
    # binding.pry
    @songs.each do |song|
      puts song.name
    end

    # binding.pry
  end

  # song = <Song:0x00000002662950
  #        +  @artist=#<Artist:0x00000002662338 @name="Michael Jackson", @songs=[...]>,
  #        +  @name="Dirty Diana">,
  #        song.name # => 'Dirty diana'
end

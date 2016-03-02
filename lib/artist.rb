require 'pry'

class Artist

  attr_accessor :name, :song, :artist
  attr_reader :songs

  @@all = []

  def initialize(name)
    @name= name
    @songs = []
  end

  def self.name=(name)
    artist = self.new
    artist.name = name
  end

  def add_song(song)
    self.song = song
    @songs<<song
  end


  def save
    @@all<<self
    
  end

  def self.all
    @@all
  end



  def self.find_or_create_by_name(name)

    if self.name == nil
      artist = self.new
      artist.name = name
      
    else
      self.name = name
    end
  end

  def print_songs
    @songs.each do |x|
      puts x.name
    end
    
  end



end
require 'pry'

class Artist

  attr_accessor :name, :songs


  @@all = []

  def initialize(name)
    @name= name
    @songs = []
  end

  def add_song(song)
    @songs<<song
  end

  def save
    @@all<<self
    
  end

  def self.all
    @@all
  end



  def self.find_or_create_by_name(name)

    if self.all.find {|artist| artist.name == name}==nil
      artist = Artist.new(name)
      @@all<<artist
      artist
    end

    
  end

  def print_songs
    @songs.each do |x|
      puts x.name
    end
    
  end



end
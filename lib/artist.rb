require 'pry'

class Artist
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def songs 
    @songs
#    Song.all.select {|song| song.artist == self}
    
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
  end
  
  def save
    @@all << self
    @songs << self
  end
  
  def self.all
    @@all
  end
  
  def self.find_or_create_by_name(artist)
    if (self.all.find{|n| n.name == artist}.nil?)
      self.new(artist)
    else
      self.all.find{|n| n.name == artist}
    end
  end

  def self.add_song(song)
    binding.pry
    @songs << song.name
    song.artist = self
  end

  # def self.find_or_create_by_name(artist)
  #   if (self.all.nil?) || (self.all.find{|n| n.name == artist}.nil?)
  #     self.new(artist)
  #   else
  #     self.all.find{|n| n.name == artist}
  #   end
  # end

  def print_songs
    @songs.each {|song| puts song.name}
  end
  
end

      # artist_1 = Artist.find_or_create_by_name("Michael Jackson")
      # artist_2 = Artist.find_or_create_by_name("Michael Jackson")
      # expect(artist_1).to eq(artist_2)

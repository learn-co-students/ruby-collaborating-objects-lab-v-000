require 'pry'

class Artist 
  attr_accessor :name, :songs
  @@all = []
  
  def self.all
    @@all 
  end 
  
  def initialize(name)
    @name = name
    @songs = []
  end 
  
  def save
    @@all << self 
  end
  
   def add_song(song)
    @songs << song
    #@songs.artist = self
  end
  
  # def self.find_or_create_by_name(artist_name)
  #     artist_return = nil
  #   @@all.each do |artist| 
  #     if artist.name = artist_name
  #       artist_return = artist
  #     end
  #   end
  #   if artist_return == nil 
  #     artist_return = Artist.new(artist_name) 
  #     artist_return.save
  #   end
  #   artist_return
  # end
  
  def self.find_or_create_by_name(name)
    if self.find(name)
      self.find(name)
    else 
      self.create(name)
    end 
   end 
  
  def self.find(name)
    @@all.find do |artist| 
      artist.name == name
    end 
  end 
  
  def self.create(name)
    artist = self.new(name)
    artist.save
    artist
  end 
  
  def print_songs
    @songs.each {|x| puts x.name}
  end 
  
end

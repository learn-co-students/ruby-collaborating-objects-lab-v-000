require 'pry'


class Artist
  
  attr_accessor :artist, :name
  attr_reader :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    @songs << song
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  #start
  
  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
  end

  def self.find(name)
    self.all.find {|artist| artist.name == name }
  end


  def self.create(name)
    self.new(name).tap {|artist| artist.save}
  end
  
  #end 
  
  # Original code 
  # def self.find_or_create_by_name(name)

  #   if self.all.find(name)  { |artist| artist.name == name }
  #     self.all.find(name) { |artist| artist.name == name }
  #   else 
  #     self.new(name).tap { |artist| artist.save}
  #   end
    
  # end

  def print_songs
    @songs.map {  |song| puts song.name }
  end

end
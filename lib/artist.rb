require 'pry'
class Artist 
  attr_accessor :name
  attr_reader :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
    
  def add_song(new_song)
    @songs.push(new_song) unless @songs.include?(new_song)
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all.push(self)
    self
  end
    
  def self.find_by_name(name)
    @@all.find {|artist| artist.name == name}
  end
  
  def self.create_by_name(name)
    self.new(name).save
  end
  
  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end
  
  def print_songs
    @songs.each do |s| 
      puts s.name 
    end
  end

  
end
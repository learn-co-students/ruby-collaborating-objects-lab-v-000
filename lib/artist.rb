require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs
  
  @@all= []
  
  
  def initialize(name)
    @name = name
    @songs = [] # a given artist should start, or be initialized, with a songs collection that is empty. Then a method will be written that adds songs to that collection - def add_song(song).
  end
  
# to keep track of an artist's songs:    
 
  def add_song(song)
    @songs.push(song)
  end

# to add each artist instance to the @@all class variable

   def save
    @@all.push(self)
    self
  end
  
  def self.all
    @@all
  end
  
   #creates an artist by name
 
  def self.create_by_name(artist_name)
    self.new(artist_name).save
  end 
  
  
  def self.find_by_name(artist_name)
    @@all.detect{|a| a.name == artist_name}
  end 
  
  def self.find_or_create_by_name(artist_name)
    self.find_by_name(artist_name) || self.create_by_name(artist_name)
  end 
  
  
  # alternate code using the tertiary operator
  
  # def self.find_or_create_by_name(name)
  #   self.find(name) ? self.find(name) : self.create(name)
  # end
  
  # if_this_is_a_true_value ? then_the_result_is_this : else_it_is_this (from Stack Overflow)
  
  # This is what subsequently would come afterwards:
  
  # def self.find(name)
  #   self.all.find {|artist| artist.name == name }
  # end


  # def self.create(name)
  #   self.new(name).tap {|artist| artist.save}
  # end
  
  def print_songs
    @songs.map do |s|
      puts "#{s.name}"
    end
  end
end


  binding.pry
  puts "goodbye"

# alternate solution

# class Artist
#   attr_accessor :name
#   attr_reader :songs
#   def initialize(name)
#     @name = name
#     @songs = []
#   end

#   @@all = []

#   def self.all
#     @@all
#   end

#   def self.find_or_create_by_name(name)
#     self.find_by_name(name) || self.create_by_name(name)
#   end

#   def self.find_by_name(name)
#     @@all.detect do |artist|
#       artist.name == name
#     end
#   end

#   def self.create_by_name(name)
#     self.new(name).save
#   end

#   def add_song(song)
#     @songs.push(song) unless @songs.include?(song)
#     song.artist = self unless song.artist == self
#   end

#   def save
#     @@all.push(self)
#     self
#   end

#   def print_songs
#     @songs.each {|s| puts s.name }
#   end

# end

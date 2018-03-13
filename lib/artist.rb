require 'pry'
class Artist
  attr_accessor :name, :songs
  #each artist's name is name
    #@songs = []
  @@all =[]
  def name #getter method cRud
    @name
    #binding.pry
  end
  def name=(name) #setter method, Crud
    @name=name
    #binding.pry
  end
  def songs #getter method cRud
    @songs
    #binding.pry
  end
  def songs=(songs) #setter method, Crud
    @songs=songs
  end
  def initialize(name)
    @name = name
    @songs = []#Crud-array to track songs when new artist is
    #instantiated
    #binding.pry
  end
  def add_song(song)
    @songs.push song
  end
  def save
    #binding.pry
    @@all << self#adds class artist instance
  end
  def self.all
    #binding.pry
    @@all
    #binding.pry
  end
  def self.find_or_create_by_name(name)
    #binding.pry
    if self.all.find{|artist| artist.name == name}
    #binding.pry
      self.all.find{|list_item| list_item.name == name}
    else
      new_artist = Artist.new(name)
      new_artist.save
      #binding.pry
      new_artist
    #binding.pry
    end
  end
  def print_songs
    @songs.each do |artist| puts artist.name end
    #binding.pry
    #rspec stdout = puts or print command;
    #error: *\e[0G = removal of binding.pry on line 53
    #puts command printout instance method, name, value
  end
end

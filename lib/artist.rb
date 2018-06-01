class Artist 
  attr_accessor :name 
  @@all = []
  #@song = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name 
    @song = []
  end 

  def add_song(song)
    song.artist = self
    @song << song
    #song.artist = self 
  end 
  
  def songs 
    @song
  end 
  
  def save
    if !@@all.include?(self)
      @@all << self
    end 
    #@@all
  end 
  
  def self.find_or_create_by_name(name) 
    if self.all.detect{|person| person.name == name}
      person = self.all.detect{|person| person.name == name}
    else 
      person = self.new(name)
      #person.name = name
      #@@all << person
    end 
    person 
  end 
  
  def print_songs
    @song.each do |i|
      puts i.name 
    end 
  end 
  
end 
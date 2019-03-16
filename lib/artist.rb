class Artist
  attr_accessor :name, :songs #operate on instance level 
 
  @@all = []
 
  def initialize(name)
    @name = name
    @songs = []
  end
 
   def add_song(song)
     @songs << song 
     #self.songs << song 
     #song.artist = self 
  end
  
  def save 
    @@all << self
  end

  def self.all  #class reader 
    @@all
  end
  
  def self.find_or_create_by_name(name) #composite constructor 
      self.find_by_name(name) || self.create_by_name(name)
  end
  
  def self.find_by_name(name)
    self.all.detect{|a| a.name == name}
  end
  
  def self.create_by_name(name)
    #Artist.new(name) - need to find what code would work with this to save
    self.new(name).tap {|artist| artist.save}
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end

end
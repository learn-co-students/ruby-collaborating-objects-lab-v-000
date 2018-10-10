class Artist 
  
  attr_accessor :name, :songs  
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def self.all
    @@all
  end
  
  def self.find(name)
    self.all.find do |existing_name| 
      existing_name.name == name
    end
  end

def self.create(name)
   new_artist = self.new(name)
     new_artist.save
     new_artist
end
  
  def self.find_or_create_by_name(name)
   self.find(name) || self.create(name)
  end
  
  def add_song(song)
    self.songs << song 
  end

def save
  @@all << self  
end

def print_songs
  puts @songs.collect {|artist| artist.name}
  end
  
end

class Artist 
attr_accessor :name, :songs

@@all =[]

def self.find_or_Create_by_name(name)
  find_by_name(name) || self.create_by_name(name)
end

def self.find_by_name(name)
 @@all.detect{|p| a.name == name}
end  

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end  
  
  def add_song(song)
    self.songs << song
    song.artist = self
  end
  
  def save
    @@all << self
  end  
  
  def self.all
    @@all
  end

end
  
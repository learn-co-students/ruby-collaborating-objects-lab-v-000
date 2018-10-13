class Artist 
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
  end 
  
  def self.all
    @@all
  end
  
  def self.find_or_create_by_name(name)
    if found = self.all.detect{|s| s.name == name}
      found 
    else 
      new_artist = self.new 
      new_artist.name = name 
      @@all << new_artist 
      new_artist
    end 
  end 
  
  def self.add_song(song)
    # This instance method exists to tell the artist about its songs. Simply take the Song instance that is passed in as an argument and store it in a songs array with all the other songs that belong to the artist.
  end 
  
  def save
    self.class.all << self
  end
  
  def print_songs 
  end 
end 
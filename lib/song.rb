class Song
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
  
  def self.name=(name)
    self.name = name
  end
  
  def self.artist=(name)
    name = self.artist.name
  end
  
  def self.new_by_filename(name)
    
  end
  
end
    
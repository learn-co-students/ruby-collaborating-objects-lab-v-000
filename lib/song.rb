class Song 
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name 
  end 
  
  def self.new_by_filename(filename)
    artist, name = filename.split("-")
    name = self.new(name.strip)
    
  end 
  
  def name.artist=(artist)
    Artist.find_or_create_by_name(artist)
    Artist.add_song(name)
  end
  
 end
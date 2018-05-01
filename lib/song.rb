class Song
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(filename)
    
    song = filename.split(" - ")[1]
    artist = filename.split(" - ")[0]
    song1 = self.new(song)
    song1.artist = artist
    song1
  end
  
  def artist_name=(name)
    Artist.find_or_create_by_name(name)
  end
  
  
  
end
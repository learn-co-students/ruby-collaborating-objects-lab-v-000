class Song
  
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(fileName)
    file = fileName.split("-").map {|f| f.strip}
    
    song = Song.new(file[1])
    
    #song.artist = Artist.new(file[0])
    
  end
  
  
end
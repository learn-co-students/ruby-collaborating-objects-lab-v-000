class Song 
  attr_accessor :name, :artist 
  
  def initialize(name)
    @name = name 
  end 
  
  def self.new_by_filename(filename)
   # song = self.file_name.new
    #self.artist.name
    song = self.new
    song.title = filename.split(" - ")[1]
    song.artist = filename.artist 
  end 
  
end 

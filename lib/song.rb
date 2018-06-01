
class Song 
  attr_accessor :artist, :name
  
  def initialize(name)
    @name = name 
  end 

  def artist=(artistOb)
    @artist = artistOb
  end 
  
  def self.new_by_filename(file)
    song = self.new(file) 
    song.name = file.split(" - ")[1]
    artName = file.split(" - ")[0]
    artOb = Artist.find_or_create_by_name(artName)
    artOb.add_song(song)
    artOb.save
    song.artist = artOb
    song
  end 
    
end 
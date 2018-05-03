class Song 
  attr_accessor :name, :artist, :artist_name
  def initialize(name)
    @name = name 
  end 
  
  def artist_name=(name)
    self.artist= Artist.find_or_create_by_name(name)
    artist.add_song(self)
    artist.save
  end 
  
  def self.new_by_filename(filename)
   name = filename.split(" - ")[1]
   new_song = Song.new(name)
   new_song.artist_name = filename.split(" - ")[0]
   new_song
    
    
  end
end 
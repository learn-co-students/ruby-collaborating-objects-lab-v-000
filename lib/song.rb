class Song 

  attr_accessor :name, :new_artist_name, :artist   
  
  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(some_filename)
    some_filename_array = some_filename.split(" - ")
    new_song = self.new(some_filename_array[1])
    @new_artist_name = some_filename_array[0]
    new_artist = Artist.new(some_filename_array[0])
    new_song.artist = new_artist 
    new_artist.songs << some_filename[1]
    new_song 
  end
  
  def artist
   self.artist = @artist 
  end 
  
end 
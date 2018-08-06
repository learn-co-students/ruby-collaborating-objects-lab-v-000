class Song 
  
  attr_accessor :name, :artist
  def initialize (name)
    @name = name
  end
  
  def Song.new_by_filename(filename)
   song_name = filename.split(" - ")[1]
   song = Song.new(song_name)
   artist_name = filename.split(" - ")[0]
   song
   #binding.pry
  end
  
  def artist_name=(artist_name)
    Artist.find_or_create_by_name(name)
  end
  
  
  
  
  
  
  
end
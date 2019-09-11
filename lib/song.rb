class Song

  attr_accessor :name, :artist

  def initialize(name) 
    @name = name
  end 

  def artist_name=(artist_name)
    artist = Artist.find_or_create_by_name(artist_name)
    self.artist = artist
  end  

  def self.new_by_filename(file_name)
    array = file_name.split(" - ")
    new_song = Song.new(array[1])
    new_song.artist_name = array[0]
    new_song
  end  
end

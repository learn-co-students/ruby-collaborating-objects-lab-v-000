class Song 
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
  

  
  def self.new_by_filename(file)
    #binding.pry
    song = file.split(" - ")[1]
    new_song = self.new(song)
    new_artist = file.split(" - ")[0]
    new_song.artist = Artist.find_or_create_by_name(new_artist)
    new_song.artist.add_song(new_song)
    new_song
  end
  
  def artist=(artist)
    @artist = artist
    #binding.pry
  end 
end 
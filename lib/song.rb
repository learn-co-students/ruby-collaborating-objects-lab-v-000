class Song 
  attr_accessor :name, :artist 
  
  def initialize(name)
    @name = name 
  end 
  
  def self.new_by_filename(name)
    song = Song.new(name.split(" - ")[1])
    song.artist_name = name.split(" - ")[0]
    song 
  end
  
  def artist_name=(name) 
    self.artist = Artist.find_or_create_by_name(name)
    # binding.pry 
    artist.add_song(self)
  end 
  
end 
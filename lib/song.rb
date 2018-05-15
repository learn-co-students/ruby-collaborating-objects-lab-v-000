class Song 
  attr_accessor :name, :artist 
  @@songs = []
  def initialize (name)
    @name = name 
  end 
  
  def self.new_by_filename(filename)
    song = self.new(filename.split(" - ")[1])
    artist = Artist.find_or_create_by_name(filename.split(" - ")[0])
    song.artist = artist
    artist.add_song(song)
    
    song
  end
  def save
    @@songs << self
    
  end 

end 
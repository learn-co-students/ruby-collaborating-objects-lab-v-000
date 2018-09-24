class Song
  
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(fileName)
    file = fileName.split("-").map {|f| f.strip}
    
    song = Song.new(file[1])
    song.artist_name=(file[0])
    song
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
    
  end
  
end

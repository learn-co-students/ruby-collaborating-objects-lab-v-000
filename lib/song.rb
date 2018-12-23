class Song
  
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(file_name)
    file = file_name.split(" - ")
    artist = Artist.new(file[0])
    song = self.new(file[1])
    song.artist = artist
    artist.songs << song
    song
  end
  
    
end
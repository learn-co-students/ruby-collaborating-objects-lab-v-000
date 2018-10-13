class Song 
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name 
  end 
  
  def self.new_by_filename(mp3)
    song = self.new
    data = mp3.split(" - ")
      name = data[1].gsub(".mp3","")
      artist = data[0]
    song.name = name 
    song.artist_name = artist
    song
  end
    
  def artist_name(name)
    if self.artist
      artist.name
    else 
      nil
    end
  end
  

end 
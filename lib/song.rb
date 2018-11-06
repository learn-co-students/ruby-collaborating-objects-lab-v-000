class Song
  attr_accessor :title, :artist
  
  
  def self.new_by_filename(filename)
    song=self.new
    song.title=filename.split("-")[1]
    song.artist=filename.split("-")[0]
    song
  end
  
  def artist(artist_name)
    artist=artist_name
  end
  
  def artist_name=(name)
    if (self.artist.nil?)
      self.artist=Artist.new(name)
    else
      self.artist.name=name
    end
  end  
  
end
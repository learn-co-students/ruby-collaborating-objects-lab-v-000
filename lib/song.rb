

class Song 
  
  attr_accessor :name, :artist
  
  @@all = []
  

  def initialize(song_name)
    @name = song_name
    @@all << self
  end 
  

  def artist_name=(artist_name)
    artist_obj = Artist.find_or_create_by_name(artist_name)
    self.artist = artist_obj
    artist_obj.add_song(self)
  end
  
  
  def self.new_by_filename(filename)
    artist, song, ext = filename.split(" - ")
    song = self.new(song)
    song.artist_name = artist
    song
  end

end



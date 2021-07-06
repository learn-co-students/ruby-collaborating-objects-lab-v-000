class Song 
  attr_accessor :artist, :name
  
  def initialize(name)
    @name = name 
  end 
  
  def self.new_by_filename(filename)
    file = filename.split(" - ")
    artist = file[0]
    song_title = file[1]
    song = self.new(song_title)
    song.artist_name = artist
    song
  end
  
  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    self.artist = artist 
    artist.add_song(self)
  end 
  
end 
class Song
  attr_accessor :name, :artist 
  def initialize(name)
    @name = name
    
  end
  
  def self.new_by_filename(file_name)
    song = Song.new(file_name)
    song_parts = file_name.split(" - ")
    song.name = song_parts[1].chomp(".mp3")
    artist = song_parts[0].chomp(" ")
    song.artist_name = artist
    song
  
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    
    artist.add_song(self)
  end
  
  
end
class Song 
  
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(filename)
   song_name = filename.split(" - ")[1]
   song = Song.new(song_name)
   artist = filename.split(" - ")[0]
   song.artist_name = artist
   song
  end
  
  def artist_name=(artist_name)
   self.artist = Artist.find_or_create_by_name(artist_name)
   artist.add_song(self)
  end

end
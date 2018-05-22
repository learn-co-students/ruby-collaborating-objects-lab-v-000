class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end
 
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

  def self.new_by_filename(filename)
    x = filename.split(" - ")
    artist = x[0]
    song_title = x[1]
    song = self.new(song_title)
    song.artist_name = artist
    song
  end
  
end 
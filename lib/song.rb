class Song
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(filename)
    split = filename.split(" - ")
    artist_name = split[0]
    song_name = split[1]
    song = self.new(song_name)
    song.artist_name = artist_name
    song
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
end
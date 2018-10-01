class Song
  attr_accessor :artist, :name
  
  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(filename)
    split_name = filename.split(" - ")
    artist = split_name[0]
    title = split_name[1]
    song = Song.new(title)
    song.artist_name = artist
    song
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
end
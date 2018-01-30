class Song
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(filename)
    parsed_filename = filename.split(" - ")
    song = self.new(parsed_filename[1])
    song.artist_name=(parsed_filename[0])
    song
  end
  
  def artist_name= (artist_name)
    self.artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(self)
  end
end
class Song
  attr_accessor :artist, :name
  
  def initialize(name)
    @name = name
  end

  def self.new_by_filename(fname)
    name = fname.split("-")[1].strip
    artist = fname.split("-")[0].strip
    song = self.new(name)
    song.artist_name = artist
    song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
end
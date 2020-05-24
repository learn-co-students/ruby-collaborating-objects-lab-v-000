class Song
  
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    title = filename.split(" - ")[1]
      song = self.new(title)
      song.artist_name = filename.split(" - ")[0]
    song
  end
  
  def artist_name=(name)
    @artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(name)
  end

end
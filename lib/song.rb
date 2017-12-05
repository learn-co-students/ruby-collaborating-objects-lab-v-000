class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @artist = nil
  end

  def artist=(artist_name)
    if (self.artist.nil?)
      self.artist = Artist.new(artist_name)
    else
      self.artist.name = artist_name
    end
  endx

  def self.new_by_filename
    song = self.new
    song.title = filename.split(" - ")[1]
    song
  end
  
end

class Song
  attr_accessor  :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    artist = filename.split(" - ")[0]
    name = filename.split(" - ")[1]
    song = Song.new(name)
    song.artist_name = artist
    song
  end

  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end


end

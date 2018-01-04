class Song
  attr_accessor :artist_name, :title, :name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song = self.new
    song.name = filename.split(" - ")[1]
    song
  end

  def artist_name
    self.artist.name
  end
  
  def artist=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
      else
        self.artist.name = artist_name
      end
  end

end

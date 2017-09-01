class Song
  attr_accessor :file_name

  def initialize(name)
    @name = name
  end

  def artist=(name)
    song = self.new
    song.artist = Song.new
    song 
  end

  def self.new_by_filename(file_name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end

end

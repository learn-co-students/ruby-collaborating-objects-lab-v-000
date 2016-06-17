class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def name=(name)
    @name = name
  end

  def artist=(artist)
    @artist = artist
  end

 def self.new_by_filename(file_name)
    song = self.new(name)
    song.artist_name = file_name.split("-")[0].strip
    song.name = file_name.split("-")[1].strip
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
class Song

  def initialize(name)
    @name = name
  end

  def name=(name)
    @name = name
  end

  def name
    @name
  end

  def artist=(artist)
    @artist = artist
  end

  def artist
    @artist
  end

  def self.new_by_filename(filename)
    song = self.new(filename.split(" - ")[1])
    artist = Artist.find_or_create_by_name(filename.split(" - ")[0])
    song.artist = artist
    song
  end

end

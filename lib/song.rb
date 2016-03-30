class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def name=(name)
    @name = name
  end

  def artist=(name)
    @artist = name
  end

  def self.new_by_filename(filename)
    array = filename.split(" - ")
    song = self.new(array[1])
    song.artist_name = array[0]
    song.artist.add_song(array[1])
    song
  end

  def artist_name=(name)
    x = Artist.find_or_create_by_name(name)
    self.artist = x
    return x
  end

end




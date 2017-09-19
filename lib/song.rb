class Song

  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def name=(name)
    @name = name
  end

  def artist=(artist)
    @artist = artist
  end

  def artist
    @artist
  end

  def self.new_by_filename(filename)
    song = self.new(filename.split(" - ")[1])
    song.artist_name = filename.split(" - ")[0]
    song
  end

  def artist_name=(name)
      #self.artist = Artist.find_or_create_by_name(name)
      artist = Artist.find_or_create_by_name(name)
      self.artist=(artist)
      #binding.pry
      artist.add_song(self)
  end



end

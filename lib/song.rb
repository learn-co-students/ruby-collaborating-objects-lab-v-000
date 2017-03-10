class Song
  attr_accessor :artist, :name
  def initialize(name)
    @name = name

  end

  def artist_name
      self.artist && self.artist.name
  end

  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name

    end
  end

  def self.new_by_filename(filename)
    artist, song = filename.split(" - ")
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song
  end

end

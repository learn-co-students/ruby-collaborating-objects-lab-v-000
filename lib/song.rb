class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song_title = filename.split(" - ")[1]
    s = self.new(song_title)
    artist_name = filename.split(" - ")[0]
    artist_name=(artist_name)
    s
  #  artist.add_song(song_title)
  end

  def artist_name=(artist_name)
    if (self.artist.nil?)
      self.artist = Artist.new(artist_name)
    else
      self.artist.name = @name
    end
  end

end

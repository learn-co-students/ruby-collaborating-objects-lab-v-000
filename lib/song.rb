class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @artist = artist
  end

  def artist=(artist)
    if artist.is_a?(Artist)
      @artist = artist
    else
      @artist = Artist.find_or_create_by_name(artist)
    end
  end

  def self.new_by_filename(filename)
    name = filename.split(" - ")[1]
    song = self.new(name)
    artist = Artist.find_or_create_by_name(filename.split(" - ")[0])
    artist.add_song(song)
    song.artist = artist
    song
  end

end

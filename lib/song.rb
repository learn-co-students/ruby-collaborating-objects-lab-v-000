class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song_title = filename.split(" - ")[1]
    s = self.new(song_title)
    trubador = filename.split(" - ")[0]
    artist_name=(trubador)
    #s.artist.add_song(s)
    s
  #  artist.add_song(song_title)
  end

  def artist_name=(artist_name)
    self.artist = Artist.find_or_create_by_name(artist_name)
  end

end

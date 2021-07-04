class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @artist = artist
  end

  def artist_name=(artist_name)
    # should find or create an artist object, and assign it to the song.artist (self.artist)
    self.artist = Artist.find_or_create_by_name(artist_name)
    # it should add the song to the artist
    self.artist.add_song(self)
  end

  def self.new_by_filename(file_name) # I don't understand how this collaborates with #artist_name
    song = Song.new(file_name.split(" - ")[1])
    song.artist_name = file_name.split(" - ")[0]
    song
  end

end

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    artist_and_name = filename.split(" - ")
    song = self.new(artist_and_name[1])
    song.artist = artist_and_name[0]
    song.artist_name=(song.artist)
    song
  end

  def artist_name=(artist_name)
    self.artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(self)
    artist
  end

end

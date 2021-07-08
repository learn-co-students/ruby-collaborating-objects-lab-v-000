class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    artist_and_song = filename.split(" - ")
    song = self.new(artist_and_song[1])
    song.artist_name = artist_and_song[0]
    song
  end

  def artist_name=(artist_name)
    @artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(self)
  end

end

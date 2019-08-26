class Song

  attr_accessor :artist
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def name=(name)
    @name = name
  end

  def artist_name=(artist_name)
    @artist = Artist.find_or_create_by_name(artist_name)
    @artist.add_song(self)
  end

  def self.new_by_filename(name)
    song_name = name.split(" - ")[1]
    artist_name = name.split(" - ")[0]
    new_song = self.new(song_name)
    new_song.artist_name = artist_name
    new_song
  end

end

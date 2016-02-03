class Song

  attr_accessor :name, :artist

  def initialize(song_name)
    @name = song_name
  end

  def self.new_by_filename(filename)
    parsed_artist = filename.split(" - ")[0]
    parsed_song_name = filename.split(" - ")[1]

    new_song = Song.new(parsed_song_name)
    new_song.artist_name = parsed_artist
    new_song
  end

  def artist_name= (name_as_string)
    @artist = Artist.find_or_create_by_name(name_as_string)
    @artist.add_song(self)
  end

  def artist=(artist_object)
    @artist = artist_object
  end

end
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    artist_name, song_name, genre = MP3Importer.file_shredder(filename).values
    new_artist = Artist.find_or_create_by_name(artist_name)
    new_artist.add_song_by_name(song_name)
  end

end
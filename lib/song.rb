class Song
  def initialize(name)
    @name = name
  end

  attr_accessor :name, :artist

  def self.artist_name(artist_name)
    artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(self)
    artist
  end

  def self.new_by_filename(file_name)
    artist_song_genre_array = file_name.split("-")
    song = self.new(artist_song_genre_array[1].strip)
    song.artist = self.artist_name(artist_song_genre_array[0].strip)
    song
  end

end

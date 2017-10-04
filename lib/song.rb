class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    parts = filename.split(" - ")
    #[artist_name, song_title, song_genre] = [parts[0], parts[1], parts[2]]
    artist_name = parts[0]
    song_title = parts[1]
    song_genre = parts[2]
    artist = Artist.find_or_create_by_name(artist_name)
    song = Song.new(song_title)
    artist.add_song(song)
    return song
  end
end

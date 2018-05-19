class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    song_artist = Artist.find_or_create_by_name(name)
    @artist = song_artist
    song_artist.add_song(self)
  end

  def self.new_by_filename(file_name)
    song = self.new(file_name.split(" - ")[1])
    song.artist_name = file_name.split(" - ")[0]
    song
  end

end

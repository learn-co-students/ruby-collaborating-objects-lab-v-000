class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    parts = file_name.split(" - ")
    artist_name = parts[0]
    song_name = parts[1].gsub(".mp3", "")
    song = self.new(song_name)
    song.artist_name = artist_name
    song
  end

  def artist_name=(name)
    @artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

end

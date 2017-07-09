class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    file_data = file_name.split(" - ")
    artist_name = file_data[0]
    song_name = file_data[1]
    genere = file_data[2].split(".").first

    song = self.new(song_name)
    song.artist_name = artist_name
    song
  end

  def artist_name=(name)
    @artist = Artist.find_or_create_by_name(name)
    @artist.add_song(self)
  end

  def artist_name
    @artist
  end
end

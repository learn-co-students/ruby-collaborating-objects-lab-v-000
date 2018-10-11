class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    art_name = filename.split(" - ")[0]
    song_name = filename.split(" - ")[1]
    song = Song.new(song_name)
    song.artist_name = art_name
    song
  end

  def artist_name=(input_name)
    @artist = Artist.find_or_create_by_name(input_name)
    @artist.add_song(self)
  end

end

class Song

  attr_accessor :name, :artist, :artist_name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    parsed = filename.split(" - ")
    song = Song.new(parsed[1])
    song.artist_name = parsed[0]
    song.artist = Artist.find_or_create_by_name(song.artist_name)
    song.artist.add_song(song)
    song
  end

end

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    artist_name, song_name = filename.split(" - ")
    song = Song.new(song_name)
    song.artist = Artist.find_or_create_by_name(artist_name)
    song
  end

end
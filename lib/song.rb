class Song
  attr_accessor  :artist, :name, :artist_name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    file = filename.split(" - ")
    name = file[1]
    artist_name=(file[0])
    song = Song.new(name)
    song.name = name
    artist = Artist.find_or_create_by_name(artist_name)
    song.artist = artist.name
    artist.add_song(song)
    song
  end

end

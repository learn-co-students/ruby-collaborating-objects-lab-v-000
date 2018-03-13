class Song
  attr_accessor :name, :artist

  def initialize(name)
    self.name = name
  end

  def self.new_by_filename(filename)
    strings = filename.split(" - ")
    song = Song.new(strings[1])
    song.artist_name(strings[0])
    song
  end

  def artist_name(name)
    @artist = Artist.find_or_create_by_name(name)
    @artist.add_song(self)
  end

end

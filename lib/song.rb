class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    parsed_song = filename.split(" - ")[1]
    parsed_artist = filename.split(" - ")[0]
    song = self.new(parsed_song)
    song.artist_name = parsed_artist
    song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
end

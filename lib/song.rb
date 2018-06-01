class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
  end

  def artist_name=(artist_name)
    self.artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(self)
  end

  def self.new_by_filename(filename)
    artist_name_s = filename.split(" - ")[0]
    name_s = filename.split(" - ")[1]
    song = self.new(name_s)
    song.name = name_s
    song.artist_name = artist_name_s
    song
  end

end

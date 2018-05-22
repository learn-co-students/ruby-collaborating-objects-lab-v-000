class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(artist_name)
    self.artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(self)
  end

  def self.new_by_filename(file_name)
    song = self.new(file_name.split(" - ")[1])
    artist = file_name.split(" - ")[0]
    song.artist_name=(artist)
    song
  end

end

class Song
  attr_accessor :name, :artist

  def initialize(name)
    self.name = name
  end

  def self.new_by_filename(filename)
    new_song = Song.new(filename.split(" - ")[0])
    new_song.artist_name=(filename.split(" - ")[1])
  end

  def artist_name=(name)
      self.artist = Artist.find_or_create_by_name(name)
      artist.add_song(self)
  end
end

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end

  def self.new_by_filename(filename)
    new_song = filename.split(" - ")
    song = self.new(new_song[1])
    song.artist_name=(new_song[0])
    song
  end
end

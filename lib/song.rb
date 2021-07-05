class Song

attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
    @artist = artist
  end

  def self.new_by_filename(file_name)
    artist, name = file_name.split(" - ")
    song = self.new(name)
    song.artist_name = artist
    song
  end
end

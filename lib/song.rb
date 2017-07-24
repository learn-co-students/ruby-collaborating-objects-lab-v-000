class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

  def self.new_by_filename(file_name)
    x = file_name.split(" - ")
    song = self.new(x[1])
    song.artist_name = x[0]
    song
  end

end

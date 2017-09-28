class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name
    self.artist.name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end

  def self.new_by_filename(file_name)
    song = self.new(file_name.split(" - ")[1])
    song.artist_name=(file_name.split(" - ")[0])
    song.artist.add_song(song)
    song
  end

end

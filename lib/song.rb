class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song = self.new(filename)
    song.name = filename.split(" - ")[1]
    name = filename.split(" - ")[0]
    song.artist_name=(name)
    song
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    self.artist = artist
  end
end

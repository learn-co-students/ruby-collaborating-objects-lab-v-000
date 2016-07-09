class Song
  attr_accessor :name, :artist

  def initialize(name = nil)
    @name = name
  end

  def self.new_by_filename(filename)
    song = self.new
    song.name = filename.split(" - ")[1]
    artist_name = filename.split(" - ")[0]
    song.artist = Artist.find_or_create_by_name(artist_name)
    song
  end

end

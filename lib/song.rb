class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  # def name=(name)
  #   @name = name
  # end

  # def name
  #   @name
  # end

  def artist_name=(artist)
    self.artist = Artist.find_or_create_by_name(artist)
    artist.add_song(self)
    artist
  end

  def self.new_by_filename(filename)
    song = self.new(name)
    song.name = filename.split(" - ")[1]
    song
  end
end

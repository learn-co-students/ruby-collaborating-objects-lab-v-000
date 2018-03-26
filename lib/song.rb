class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def self.new_by_filename(filename)
    new_song = Song.new(filename.split(" - ")[1])
    new_song.artist_name = (filename.split(" - ")[0])
    new_song
  end

  def artist_name=(artist_name)
    artist = Artist.find_or_create_by_name(artist_name)
    self.artist = artist
    artist.add_song(self)
  end


end

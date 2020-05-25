class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    filename = filename.split(" - ")
    song = Song.new(filename[1])
    song.artist_name = filename[0]
    song

  end

  def artist_name=(name)
    @artist = Artist.find_or_create_by_name(name)
    @artist.add_song(self)
    #artist.name = artist
    @artist
  end

end

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    array = filename.split(" - ")
    song = self.new(array[1])
    song.artist_name = array[0]
    song
  end

  def artist_name
    @artist.name if @artist
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
end

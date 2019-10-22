class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

  def self.new_by_filename(name)
    array = name.split(" - ")
    new_song = self.new(array[1])
    new_song.artist_name = array[0]
    new_song
  end

end

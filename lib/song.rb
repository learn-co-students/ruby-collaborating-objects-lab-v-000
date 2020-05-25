class Song

  attr_accessor :name, :artist

  def initialize(name)
    self.name = name
  end

  def set_artist(name)
    @artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end

  def self.new_by_filename(filename)
    data = filename.split(' - ')
    song = self.new(data[1])
    song.set_artist(data[0])
    song
  end

end

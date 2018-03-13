class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end

  def self.new_by_filename(file)
    split = file.split(" - ")
    name = split[1]
    song = Song.new(name)
    song.artist_name = split[0]
    song
  end

end
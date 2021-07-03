class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end


  def Song.new_by_filename(file_name)

    name_and_artist = file_name.split(" - ")
    artist = name_and_artist[0]
    name = name_and_artist[1]

    song = Song.new(name)
    song.artist_name = artist
    song
  end

end

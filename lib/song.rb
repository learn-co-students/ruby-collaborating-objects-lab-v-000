class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

  def self.new_by_filename(filename)
    music_file = filename.split(" - ")
    artist_name = music_file[0]
    title_name = music_file[1]

    song = self.new(title_name)
    song.artist_name = artist_name
    song

  end

end

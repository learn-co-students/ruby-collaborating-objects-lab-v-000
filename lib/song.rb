class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

  def self.new_by_filename(file_name)
    partial_file = file_name.split(" - ")
    artist_name = partial_file[0]
    song_name = partial_file[1]
    genre = partial_file[2]
    song = self.new(song_name)
    song.artist_name = artist_name
    song
  end

end

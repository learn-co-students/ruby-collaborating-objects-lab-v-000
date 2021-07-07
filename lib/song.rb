class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @artist = nil
  end

  def self.new_by_filename(file_name)
    parsed_file = file_name.split(" - ")
    name = parsed_file[0]
    song_name = parsed_file[1]

    song = self.new(song_name)
    song.artist_name = name
    song
  end

  def artist_name=(name)
    @artist = Artist.find_or_create_by_name(name)
    @artist.add_song(self)
  end

end

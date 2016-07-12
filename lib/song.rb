class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    # parse file name
    artist, song, genre = filename.split(" - ")
    # create new song by name
    new_song = self.new(song)
    # assign artists name
    new_song.artist = Artist.find_or_create_by_name(artist)
    # return song
    new_song
  end
end

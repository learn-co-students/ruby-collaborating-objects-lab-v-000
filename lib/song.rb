class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    # parse file name
    artist, song, genre = file_name.split(" - ")
    # create new song by name
    new_song = self.new(song)
    # assign artists name
    new_song.artist = artist
    # return song
    new_song
  end
end

class Song

  @@all = []

  attr_accessor :name, :artist

  def initialize(name, artist=nil)
    @name = name
    @artist = artist
  end

# file format --> artist - song - genre.file_type E.g. "Action Bronson - Larry Csonka - indie.mp3"
  def self.new_by_filename(file)
    filename_parts = file.split(/ - /)
    @@all << (song = Song.new(filename_parts[1], Artist.find_or_create_by_name(filename_parts[0])))
    song.artist.add_song(song)
    song
  end
end

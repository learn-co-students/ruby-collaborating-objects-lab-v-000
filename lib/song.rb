class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
    self.artist = artist
  end

  def self.new_by_filename(filename)
    artist_name_string = filename.split(" - ")[0]
    song_name_string = filename.split(" - ")[1]

    song = self.new(song_name_string)
    song.artist_name = artist_name_string
    # self.artist = song.artist_name
    song
  end

end

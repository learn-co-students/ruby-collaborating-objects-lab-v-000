class Song
  attr_accessor :name, :artist, :artist_name, :genre

  def initialize(name)
    parse_name(name)
    self
  end
  def self.new_by_filename(file_name)
    song = Song.new(file_name)
    song
  end

  def parse_name(file_name)
    strings = file_name.split(" - ")
    if strings.length > 1
      @name = strings[1]
      @artist_name = strings[0]
      @genre = strings[2].chomp(".mp3")
      # If we know the name of the artist, we can create or find the artist.
      @artist = Artist.find_or_create_by_name(@artist_name)
      # We can also add the song to the artist, if we know the artist.
      @artist.add_song(self)
    else
      @name = strings[0]
    end
  end
end

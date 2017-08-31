class Song
  attr_accessor :song_name, :artist

  def initialize(songs)
    @songs
    @song_name = song_name
  end

  def song_name
  end

  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end

  def self.new_by_filename(filename)
    song = self.new
    song.title = filename.split(" - ")[1]
    song
  end

end

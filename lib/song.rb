class Song

  attr_accessor :title, :artist_name, :artist

  def initialize(title)
    @title = title
    @songs = []
  end

  def self.new_by_filename(filename)
    song_title = filename.split(" - ")[1]
    name = filename.split(" - ")[0]
    song = self.new(song_title)
    song.artist_name = name
    song
  end

  def artist_name=(name)
    Artist.find_or_create_by_name(name)
  end

end

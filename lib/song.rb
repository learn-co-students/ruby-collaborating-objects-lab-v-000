class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    parts = filename.split(" - ")
    artist_name = parts[0]
    title = parts[1]
    genre = parts[2].gsub(".mp3", "")
    song = Song.new(title)
    song.artist = Artist.find_or_create_by_name(artist_name)
    song
  end

end
